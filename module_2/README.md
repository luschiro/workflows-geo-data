# Módulo 2 | Qualidade de dados e validação inical

## A | Introdução

Com nossos dados "raw" permanecidos em uma database, vamos começar nossas análises. Uma vez em uma database SQlite, existem diversas maneiras que acessarmos os dados. Pelo terminal, pelo VSCode out até por alguma ferramenta externa, como o DB Browser: ferramenta bem útil e simples, onde poderemos facilmente validar nossas análises e conferir nossos workflows.

## B | DB Browser (DBB) e SQL

O DB Browser é uma ferrmanta visual e de alta qualidade para administração de databases SQlite. Segundo o [site oficial](https://sqlitebrowser.org/):

>DB Browser for SQLite (DB4S) is a high quality, visual, open source tool to create, design, and edit database files compatible with SQLite. DB4S is for users and developers who want to create, search, and edit databases.

SQL (structured query language) é uma linguagem de consulta antiga (e não de programação..), mas muito útil e bastante usada no meio dos dados.

Geralmente, em operações do dia a dia, conseguimos utilizar ferramentas de planilha (excel, sheets) para resolvermos nossos problemas. Quando existe um volume muito grande dados, utilizar tais ferramentas pode ser um pouco complicado.

Deste modo, vamos realizar algumas análises utilizando SQL, simulando um contexto fora das ferramentas de planilha. Para praticar, iremos resolver algumas questões..

## C | Questões

Algumas perguntas guia para colocarmos em prática o SQL, tanto em um contexto de qualidade e validação de dados (A-X), como já em análises voltadas aos problemas geológicos/geoestatísticos que iremos resolver (1-X).

São elas:

* **A |** Quantos pontos foram amostrados?
* **A |** Quantas amostras não possuem dados sobre teor de Cr? Quantas não possuem Cr ou Zn*/
* **B |** Quantos pontos foram amostrados de cada `litotipo`?
* **F |** Qual a combinação de `landuse` e `litotipo` que possui mais amostras?
* **C |** Existe algum ponto de amostragem repetido (mesma localização)?
* **D |** Qual o número de amostras com concentração faltante de algum elemento?
* **E |** Existe alguma amostra com teor faltante em mais de um elemento?
* **G |** Qual dos elementos possui o maior número de dados nulos?

---

* **2 |** Na tabela jura_bad_samples existem amostras que não são confiáveis. Quais os `litotipos` dessas amostras?
* **1 |** Quais os maiores teores de cada elemento nas amostras problemáticas?
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
