/** **A |** Quantos pontos foram amostrados?*/
select 
    count(*) as qtPoints 
from jura;

/** **A| ** Quantas amostras não possuem teor de Cr? Quantas não possuem Cr ou Zn*/
select 
    * 
from jura 
where Cr is null;


select 
    *
from jura 
where Cr is null or Zn is null;

/** **A| ** Quantas amostras foram coletadas em Floresta e não possuem teor faltante de cadmium?*/
select 
    *
from jura 
where Landuse = 'Floresta' and cadmium is null;


/** **B |** Quantos pontos foram amostrados de cada `litotipo`?*/
select
    Rock as litotipo,
    count(*) as qtPoints
from jura
group by Rock;


/** **F |** Qual a combinação de `landuse` e `litotipo` que apresenta mais amostras coletadas?*/
select 
    Landuse,
    Rock,
    count(*) as qtPontos 
from jura
group by 1, 2
order by qtPontos desc
;


/** **C |** Existe algum ponto de amostragem repetido (mesma localização)?*/
select 
    Xloc,
    Yloc,
    count(*) as repeticoes 
from jura
group by 1, 2
order by repeticoes desc
;




/** **E |** Existe alguma amostra com teor faltante em mais de um elemento?*/
SELECT
    *,
    SUM (CASE WHEN cobalt is null then 1 else 0 end) as flnull,
