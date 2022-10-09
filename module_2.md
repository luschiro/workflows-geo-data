# Módulo 2 | Qualidade de Dados e Validação Inical

## DB Browser (DBB) e SQL

## Criando e Executando Queries do DBB

## Questões

Algumas perguntas guia para colocarmos em prática o SQL, tanto em um contexto de qualidade e validação de dados (A-X), como em análises voltadas à geologia (1-X). São elas:

* **A |** Quantos pontos foram amostrados?
* **A |** Quantas amostras não possuem teor de Cr? Quantas não possuem Cr ou Zn*/
* **B |** Quantos pontos foram amostrados de cada `litotipo`?
* **F |** Qual a combinação de `landuse` e `litotipo` que apresenta mais amostras com dados faltantes?
* **C |** Existe algum ponto de amostragem repetido (mesma localização)?
* **D |** Qual o número de amostras com concentração faltante de algum elemento?
* **E |** Existe alguma amostra com teor faltante em mais de um elemento?

* **G |** Qual dos elementos possui o maior número de dados nulos?

---

* **1 |** Quais os maiores teores de cada elemento nas amostras problemáticas?
* **2 |** Na tabela jura_bad_samples existem amostras que não são confiáveis. Quais os `litotipos` dessas amostras?
* **3 |** Quantas amostras do dataset estão acima desses teores, individualmente? E acima de todos?
  * por exemplo, existem X amostras com teores de Zn acima do maior teor de Zn nas amostras problemáticas; e Y amostras com todos os teores acima dos maiores teores das amostras
* **4 |** Em qual `landuse` ocorre o maior teor médio de Cu?
* **5 |** Quais são as 5 amostras do `Argoviano` com maiores teores de Zn?
* **6 |** Quais seriam os vértices de nossa área caso fossemos delimitá-la em um retângulo?
* **7 |** Caso limitássemos nossa área em um retângulo, quais seriam as coordenadas?
* **8 |** Considerando os quadrantes desse retângulo,qual deles teria a maior concentração média de Cr? E de Cd?
* **9 |** Qual o teor médio de Cr das amostras que possuem teor acima do limite Q3?
* **10 |** Considerando a [definição de outliers por IQR](https://towardsdatascience.com/why-1-5-in-iqr-method-of-outlier-detection-5d07fdc82097), quais amostras apresentam outliers? E qual elemento possui o maior número de amostras anômalas?

---

* **11 |** Monte uma visão ou tabela nova a nível de amostra, sem dados faltantes, com classificação de quadrante, com flags para anomalias de cada elemento e com status de amostra problemática?
* **12 |** Monte uma visão ou tabela mais abstrata, a nível de litotipo & landuse. Quais tipos de informações poderíamos agregar?

---

* SQlite3
* contagens
* dados únicos, duplicidade
* filtros, agrupamentos e joins
* estatística básica
