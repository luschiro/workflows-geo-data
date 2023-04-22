/*
A | Quantos pontos foram amostrados?
B | Quantas amostras não possuem dados sobre teor de Cr? Quantas não possuem Cr ou Zn?
C | Quantos pontos foram amostrados de cada litotipo?
D | Qual a combinação de landuse e litotipo que possui mais amostras?
E | Existe algum ponto de amostragem repetido (mesma localização)?
F | Qual o número de amostras com concentração faltante de algum elemento?
G | Existe alguma amostra com teor faltante em mais de um elemento?
H | Qual dos elementos possui o maior número de dados nulos?
*/


-- Quantos pontos foram amostrados?
select 
    count(*) as qtPoints 
from jura;

-- Quais os tipos distintos de uso de terra (`landuse`)?
select
    distinct Landuse
from jura;


-- Quantas amostras forma coletadas em floresta?
select 
    *
from jura 
where Landuse = 'Floresta'

-- Quantas amostras não possuem dados sobre teor de Cr?
select 
    * 
from jura 
where Cr is null;

-- * Quantas não possuem teores de Cr ou de Zn?
select 
    *
from jura 
where Cr is null or Zn is null;



-- Quantos pontos foram amostrados de cada litotipo?
select
  Rock as litotipo,
  count(*) as qtPontos
from jura
group by 1
order by 2 desc
;



/** **A| ** Quantas amostras foram coletadas em florestas e não possuem teor cadmium?*/
select 
    *
from jura 
where Landuse = 'Floresta' 
      and cadmium is null;


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


-- D
select 
    Landuse,
    Rock,
    count(*) as qtPontos 
from jura
group by 1, 2
order by qtPontos desc
;


-- E
select 
    Xloc,
    Yloc,
    count(*) as repeticoes 
from jura
group by 1, 2
having repeticoes > 1
;



