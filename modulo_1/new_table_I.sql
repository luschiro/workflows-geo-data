 /*
	* **Tabela I -  `new_table_I.sql`** Monte uma visão nova a nível de amostra:
    * sem dados faltantes;
    * nomes de colunas padronizados;
		* status de amostra problemática;
    * com flags para outliers de Zn, segundo o critério de IQR;
	*/

with t as (
	select
		t1.Xloc as vlLocX,
		t1.Yloc as vlLocY,
		lower(t1.Landuse) as descLanduse,
		lower(Rock) as descUnit,
		
    -- teores
    cadmium as vlCadmium,
		cobalt as vlCobalt,
		Cr  as vlChromium,
		nickel as vlNickel,
		Pb as vlLead,
		Zn as vlZinc,
		t2.status,
		
    -- percent_rank
		round(percent_rank() over(order by cadmium), 2) as rankCadmium,
		round(percent_rank() over(order by cobalt), 2) as rankCobalt,
		round(percent_rank() over(order by Cr), 2) as rankChromium,
		round(percent_rank() over(order by nickel), 2) as rankNickel,
		round(percent_rank() over(order by Pb), 2) as rankPb,
		round(percent_rank() over(order by Zn), 2) as rankZn
from jura as t1

left join jura_bad as t2
	on t1.Xloc = t2.Xloc
	and t1.Yloc = t2.Yloc

where cadmium is not null
			and cobalt is not null
			and Cr is not null
			and nickel is not null
			and Pb is not null
			and Zn is not null

),

-- select * from t order by vlZinc desc

quantiles as (
	select
		min(case when rankZn = 0.25 then vlZinc end) as q1Zn,
		max(case when rankZn = 0.75 then vlZinc end) as q3Zn,
		max(case when rankZn = 0.75 then vlZinc end) - min(case when rankZn = 0.25 then vlZinc end) as vlIqrZn
	from t
),

limits as (
	select 
		*,
		q1Zn - 1.5 * vlIqrZn as vlOutlierMin,
		q3Zn + 1.5 * vlIqrZn as vlOutlierMax
	from quantiles
)

select
	t.*,
	case 
		when t.vlZinc > limits.vlOutlierMax  then "high_anomaly"
		when t.vlZinc < limits.vlOutlierMin  then "low_anomaly"
	else "normal" end as descAnomalyZn
from t
left join limits
	on t.vlZinc < limits.vlOutlierMin
	or t.vlZinc > limits.vlOutlierMax
