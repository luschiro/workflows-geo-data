# Módulo 1 | Qualidade de dados e validação inical

## Introdução

Com nossos dados "raw" permanecidos em uma database, vamos começar nossas análises. Uma vez em uma database SQlite, pode utilizar o DB Browser, uma ferramenta simples e bem útil, onde poderemos validar dados, análises e conferir o resultado de nossas queries.

## SQL

O SQL (structured query language) é uma linguagem de consulta antiga (e não de programação..), mas muito útil e bastante usada no meio dos dados.

Geralmente, em operações do dia a dia, conseguimos utilizar ferramentas de planilha (excel, sheets) para resolvermos nossos problemas. Quando existe um volume muito grande dados, utilizar tais ferramentas pode ser um pouco complicado.

Deste modo, vamos realizar algumas análises utilizando SQL, simulando um contexto fora das ferramentas de planilha. Para praticar, iremos resolver algumas questões..

## DB Browser

O DB Browser é uma ferrmanta visual e de alta qualidade para administração de databases SQlite. Segundo o [site oficial](https://sqlitebrowser.org/):

>DB Browser for SQLite (DB4S) is a high quality, visual, open source tool to create, design, and edit database files compatible with SQLite. DB4S is for users and developers who want to create, search, and edit databases.

## Questões

Algumas perguntas guia para colocarmos em prática o SQL, tanto em um contexto de qualidade e validação de dados (A-X), como já em análises voltadas aos problemas geológicos/geoestatísticos que iremos resolver (1-X).

---

* **Qualidade de Dados**
  * Quantos pontos foram amostrados?
  * Quais os tipos distintos de uso de terra (`landuse`)?
  * Quantas amostras foram coletadas em floresta?
  * Quantas amostras são do Argoviano e possuem teor de Zn > 50?
    * caso esse seja um core fictício, classifique as amostras com base neste critério
  * Quantas amostras não possuem dados de teor de Cr?
    * Quantas não possuem teores de Cr ou de Zn?

  * Quantas registros existem de cada `litotipo`?
  * Qual a combinação de `landuse` e `litotipo` que apresenta mais amostras coletadas?
    * crie um rank com as 5 principais combinações
  
  * Existe algum ponto de amostragem repetido, mesma localização?
  * Qual o número de amostras com alguma concentração faltante?
  * Existe alguma amostra com teor faltante em mais de um elemento?
  * Qual dos elementos possui o maior número de amostras de dados nulos?

---

* **Sobre os Teores**
  * Na tabela `jura_bad_samples` existem amostras que não são confiáveis. Quais os `litotipos` dessas amostras?
  * Quais os maiores teores de cada elemento nas amostras problemáticas?
  * Quantas amostras do dataset estão acima desses teores, individualmente? E acima de todos?
    * por exemplo, existem X amostras com teores de Zn acima do teor máximo de Zn nas amostras problemáticas; e Y amostras com todos os teores acima dos maiores teores das amostras
  * Em qual `landuse` ocorre o maior teor médio de Cu?
  * Quais são as 5 amostras do `Argoviano` com maiores teores de Zn?

  * Quais seriam os vértices de nossa área caso fossemos delimitá-la em um retângulo?
  * Caso limitássemos nossa área em um retângulo, quais seriam as coordenadas?
  * Considerando os quadrantes desse retângulo,qual deles teria a maior concentração média de Cr? E de Cd?
  * Qual o teor médio de Cr das amostras que possuem teor acima do limite Q3?
  * Considerando a [definição de outliers por IQR](https://towardsdatascience.com/why-1-5-in-iqr-method-of-outlier-detection-5d07fdc82097), quais amostras apresentam outliers? E qual elemento possui o maior número de amostras anômalas?

---

* **Novas Tabelas**
  * **I |** Monte uma visão ou tabela nova a nível de amostra:
    * sem dados faltantes;
    * nomes de colunas padronizados;
    * com classificação de quadrante;
    * com flags para anomalias de cada elemento;
    * com status de amostra problemática
  
  * **II |** Monte uma visão ou tabela mais abstrata, a nível de litotipo & landuse.
    * Quais tipos de informações poderíamos agregar?
