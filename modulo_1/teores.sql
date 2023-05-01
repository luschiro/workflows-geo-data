/*
	* Para cada litotipo, quais os maiores, menores teores de Zn e Cr? E o teores médios?
  * Quais são as 5 amostras do `Argoviano` com maiores teores de Zn?
  * Em qual combinação de `landuse` e `litotipo` ocorre o maior teor médio de Cu?
	* Qual são os quartis Q1, Q2, Q3 dos teores de Pb?
*/

select
  Rock,
	min(Zn) as min_Zn,
	max(Zn) as max_Zn,
	avg(Zn) as avg_Zn,
	
	min(Zn) as min_Cr,
	max(Zn) as max_Cr,
	avg(Zn) as avg_Cr

from jura
group by Rock
;

select
	Landuse,
	Zn
from jura
where Rock = "Argoviano"
order by Zn desc
limit 5
;

select
  Rock,
	Landuse,
	round(avg(Cu), 2) as avg_Cu
from jura
group by Rock, Landuse
order by 3 desc
limit 1
;

-- Qual são os quartis Q1, Q2, Q3 dos teories de Pb?
with quartis as (
	select
		Xloc,
		Yloc,
		Pb,
		ntile(4) over(order by Pb asc) as quartilPb
	from Jura
	order by Pb desc
)

select
	quartilPb,
	max(Pb) as vlPb
from quartis
group by 1
order by 1 desc
;
