/*
FILTROS e CONTAGENS
	* Quantos pontos foram amostrados?
	* Quais os tipos distintos de uso de terra - landuse e litotipo - Rock?
	* Quantas amostras foram coletadas em floresta?
	* Quantas amostras são do Argoviano e possuem teor de Zn > 50?
	  * caso esse seja um teor de corte fictício, classifique as amostras com base neste critério
	* Quantas amostras não possuem dados de teor de Cr?
	* Quantas não possuem teores de Cr ou de Zn?
*/

select
    *
from jura
;

select
    count(*)
from jura
;

select
    --distinct(Landuse)
	distinct(Rock)
from jura
;

select
    count(*)
from jura
where Landuse = "Floresta"
;

select
    *
from jura
where Rock = "Argoviano" and Zn > 50
order by Zn desc
;

select
    *,
    case 
	    when Zn > 50 then 1 else 0
	end as flCorteZn
from jura
where Rock = "Argoviano" --and Zn > 50
order by Zn desc
;

select
	*
from jura
where Cr is null or Zn is null
;

/* 
AGRUPAMENTO
    * Quantas registros existem de cada litotipo?
	* Qual a combinação de landuse e litotipo que apresenta mais amostras coletadas?
	  * crie um rank com as 5 principais combinações
	  * filtre as combinações para aquelas com mais de 40 pontos amostrados
	* Existe algum ponto de amostragem repetido, mesma localização?
*/

select
    Rock as litotipoe,
	count(*) as qtPontons
from jura
group by Rock
order by 2 desc
;

select
	Rock as litotipo,
	landuse as uso,
	count(*) as qtPontos
from jura
group by Rock, landuse
order by 3 desc
limit 5
;

select
	Rock as litotipo,
	landuse as uso,
	count(*) as qtPontos
from jura
group by Rock, landuse
having qtPontos > 40
order by 3 desc
;

select
	Xloc,
	Yloc,
	count(*) as qtPontos
from jura
group by Xloc, Yloc
order by 3 desc
limit 5
;


/*
WITH
	* Existe alguma amostra com teor faltante em todos os elementos?
	* Entre cádmio, cobalto e cromio, qual o elemento com o maior número de amostras de sem teor? 
		* Em termos %, o quanto essas amostras representam do total de amostras?
 */
 
with t as (
    select
        *,
        coalesce(cadmium, cobalt, Cr, Cu, nickel, Pb, Zn) as dado
    from jura
)
select 
	* 
from t 
where dado is not null
;


with t as (
    select
        *,
        case when cadmium is null then 1 else 0 end as flCadmium,
        case when cobalt is null then 1 else 0 end as flCobalt,
        case when Cr is null then 1 else 0 end as flCr
    from jura
)
select	
  sum(flCadmium) as sumCadmium,
  avg(flCadmium) as avgCadmium,
  sum(flCobalt) as sumCobalt,
  avg(flCobalt) as avgCobalt,
  sum(flCr) as sumCr,
  avg(flCr) as avgCr
from t
;

/*Join
* Na tabela jura_bad_samples existem amostras que não são confiáveis. Quais os litotipos dessas amostras?
* Quais os maiores teores de Cr e Zn nas amostras problemáticas?
* Quantas amostras do dataset estão acima desses teores?
	* por exemplo, existem X amostras com teores de Zn acima do teor máximo de Zn nas amostras problemáticas
* Monte uma tabela com todos os dados da tabela original e uma coluna adicional de status.
* * Desafio: caso as coordernadas das 4 amostras problemáticos do Quaternario e Kimmerridgiano sejam as extremidades de uma área problemática, 
quantas amostras estariam dentro destes limites?
*/

-- lito
select
	t1.*,
	t2.Rock
from jura_bad as t1
left join jura as t2
	on t1.Xloc = t2.Xloc
	and t1.YLoc = t2.Yloc
;


-- maiores teores
with bad_samples as (
	select
		*
	from jura_bad as t1
	left join jura as t2
		on t1.Xloc = t2.Xloc
		and t1.YLoc = t2.Yloc
)

select
	"problematic_samples" as description,
	max(Cr) as maxCr,
	max(Zn) as maxZn
from bad_samples
;

-- corte
with bad_samples as (
	select
		*
	from jura_bad as t1
	left join jura as t2
		on t1.Xloc = t2.Xloc
		and t1.YLoc = t2.Yloc
),
cortes as (
	select
		"problematic_samples" as description,
		max(Cr) as maxCr,
		max(Zn) as maxZn
	from bad_samples
)
select 
	* 
from jura as t1
inner join cortes as c
	on t1.Cr > c.MaxCr
	or t1.Zn > c.MaxZn
;


-- tabela
with tb_join as (
	select
		t1.*,
		coalesce(t2.status, 'good') as status
	from jura as t1
	left join jura_bad as t2
		on t1.Xloc = t2.Xloc
		and t1.YLoc = t2.Yloc
)
select * from tb_join
;
