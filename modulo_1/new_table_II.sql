/*
  * **Tabela II -  `new_table_II.sql`** Monte uma visão ou tabela mais abstrata, a nível de litotipo & landuse.
    * Quais tipos de informações poderíamos agregar?
*/

SELECT 
	descUnit,
	COUNT(*) as qtSamples,
	
	-- Cd
	MIN(vlCadmium) as vlMinCadmium,
	MAX(vlCadmium) as vlMaxCadmium,
	ROUND(AVG(vlCadmium), 3) as vlAvgCadmium,
	
	-- Co
	MIN(vlCobalt) as vlMinCobalt,
	MAX(vlCobalt) as vlMaxCobalt,
	ROUND(AVG(vlCobalt), 3) as vlAvgCobalt,
	
	-- Cr
	MIN(vlChromium) as vlMinChromium,
	MAX(vlChromium) as vlMaxChromium,
	ROUND(avg(vlChromium), 3) as vlAvgChromium,
	
	-- Ni
	MIN(vlNickel) as vlMinNickel,
	MAX(vlNickel) as vlMaxNickel,
	ROUND(AVG(vlNickel), 3) as vlAvgNickel,
	
	-- Pb
	MIN(vlLead) as vlMinLead,
	MAX(vlLead) as vlMaxLead,
	ROUND(AVG(vlLead), 3) as vlAvgLead,
	
	-- Zn
	MIN(vlZinc) as vlMinZinc,
	MAX(vlZinc) as vlMaxZinc,
	ROUND(AVG(vlZinc), 3) as vlAvgZinc

FROM silver_jura
GROUP BY descUnit
ORDER BY descUnit
;