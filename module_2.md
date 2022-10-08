# Módulo 2 | Qualidade de Dados e Validação Inical

## DB Browser (DBB) e SQL



## Criando e Executando Queries do DBB



## Questões

Algumas perguntas guia para colocarmos em prática o SQL, tanto em um contexto de qualidade e validação de dados (A-X), como em análises voltadas à geologia (1-X). São elas:

* **A |** Existe algum ponto repetido (mesma localização)?
* **A |** Qual o número de amostras com concentração faltante de algum elemento?
* **B |** Existe alguma amostra com concentração faltante em mais de um elemento?
* **C |** Qual dos elementos possui o maior número de dados nulos (não existentes)?
* **D |** Qual a combinação de `landuse` e `litotipo` que apresenta mais amostras problemáticaas com dados faltantes?
* **E |** 

---

* **1 |** Quais litotipos foram mais e menos amostrados?
* **2 |** Em qual `landuse` ocorre o maior teor médio de Cu?
* **3 |** Quais são as 5 amostras do `Argoviano` com maiores teores de Zn?
* **4 |** Quais seriam os vértices de nossa área caso fossemos delimitá-la em um retângulo?
* **5 |** Caso dividíssemos nossa área que quadrantes desse retângulo, qual deles teria a maior concentração média de Cr? E de Cd?
* **6 |** Considerando a [definição de outliers por IQR](https://towardsdatascience.com/why-1-5-in-iqr-method-of-outlier-detection-5d07fdc82097), quais amostras apresentam outliers? E qual elemento possui o maior número de amostras anômalas?
* **7 |** Monte uma visão ou tabela nova a nível de amostra, sem amostras problemáticas, com classificação de quadrante e com flags para anomalias de cada elemento?
* **8 |** Monte uma visão ou tabela mais abstrata, a nível de litotipo & landuse. Quais tipos de informações poderíamos agregar e como?


---

* SQlite3
* contagens
* dados únicos, duplicidade
* filtros, agrupamentos e joins
* estatística básica
