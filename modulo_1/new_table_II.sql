/*
  * **Tabela II -  `new_table_II.sql`** Monte uma visão ou tabela mais abstrata, a nível de litotipo & landuse.
    * Quais tipos de informações poderíamos agregar?
*/

select 
	descUnit,
	count(*) as qtSamples,
	
	-- Cd
	min(vlCadmium) as vlMinCadmium,
	max(vlCadmium) as vlMaxCadmium,
	round(avg(vlCadmium), 3) as vlAvgCadmium,
	
	-- Co
	min(vlCobalt) as vlMinCobalt,
	max(vlCobalt) as vlMaxCobalt,
	round(avg(vlCobalt), 3) as vlAvgCobalt,
	
	-- Cr
	min(vlChromium) as vlMinChromium,
	max(vlChromium) as vlMaxChromium,
	round(avg(vlChromium), 3) as vlAvgChromium,
	
	-- Ni
	min(vlNickel) as vlMinNickel,
	max(vlNickel) as vlMaxNickel,
	round(avg(vlNickel), 3) as vlAvgNickel,
	
	-- Pb
	min(vlLead) as vlMinLead,
	max(vlLead) as vlMaxLead,
	round(avg(vlLead), 3) as vlAvgLead,
	
	-- Zn
	min(vlZinc) as vlMinZinc,
	max(vlZinc) as vlMaxZinc,
	round(avg(vlZinc), 3) as vlAvgZinc

from silver_jura
group by 1
order by 1