/*
* Para cada litotipo, quais os maiores, menores teores de Zn e Cr? E o teores médios?
  * Em qual combinação de `landuse` e `litotipo` ocorre o maior teor médio de Cu?
  * Quais são as 5 amostras do `Argoviano` com maiores teores de Zn?
  * Qual o teor médio de Cr das amostras que possuem teor acima do limite Q3?
  * Considerando a [definição de outliers por IQR](https://towardsdatascience.com/why-1-5-in-iqr-method-of-outlier-detection-5d07fdc82097), quais amostras apresentam outliers?
    * qual elemento possui o maior número de amostras anômalas segundo esse critério?
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
	Rock,
	Landuse,
	round(avg(Cu), 2) as avg_Cu

from jura
group by Rock, Landuse
order by 3 desc
limit 5
;
	
select
	*,
	rank() over (order by Zn desc) as q
from jura
;
select * from jura