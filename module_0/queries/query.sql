/** **A |** Quantos pontos foram amostrados?*/
select 
    count(*) as qtPoints 
from jura;


/** **B |** Quais os tipos distintos de Landuse?*/
select
    distinct Landuse
from jura;

/** **A| ** Quantas amostras possuem teor de Cobalto maior ou igual a 10? */
select
    count(*)
from jura
where cobalt >= 10;


/** **A| ** Quantas amostras não possuem teor de Cr? Quantas não possuem Cr ou Zn*/
select 
    * 
from jura 
where Cr is null;


select 
    *
from jura 
where Cr is null or Zn is null;


/** **A| ** Quantas amostras foram coletadas em florestas e não possuem teor cadmium?*/
select 
    *
from jura 
where Landuse = 'Floresta' and cadmium is null;


/** **C |** Crie uma coluna que caso Landuse seja Floresta, o campo é preenchido com 'forest'. 
Caso seja outro Campo, 'field'. Qualquer outro, preencha com 'outro' */
select 
    Xloc,
    Yloc,
    Landuse,
    CASE
        WHEN Landuse = 'Floresta' THEN 'forest'
        WHEN Landuse = 'Campo' THEN 'field'
    ELSE 'outro' END AS trad_landuse
from jura
--where Landuse = 'Floresta'
limit 10
;

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
having repeticoes > 1
;



