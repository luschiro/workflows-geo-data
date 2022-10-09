# Workflows de Geoestatística e Análise de Dados Geoespaciais

## A | Introdução

Este conteúdo é voltado a estudantes e profissionais com interesse em aplicações de geoestatística, partindo de uma perspectiva de análise de dados, programação, automação de processos e exploração de banco de dados.

## B | Metodologia

Serão realizados workflows com o objetivo de responder a **perguntas-chave** de diversos problemas geológicos geospaciais aplicados à mineração, hidrogeologia e gestão de áreas contaminadas envolvendo conceitos de geoprocessamento e geoestatística.

### B.1 | Banco de Dados e SQL

Iremos montar um banco de dados simples, simulando uma aplicação. A partir de dela, iremos analisar os dados com queries SQL para responder perguntas iniciais e gerar visualizações mais abstratas.

### B.2 | Python

A linguagem de pregramação principal que será usada no curso, nos ajudará com a orquestração das nossas queries, gestão do banco de dados, análise exploratória, visualização de dados e criação de modelos.

## C | Estudo de Caso e Datasets

Serão utilizados os seguintes:

* introdução, EDA, dataviz, krigagem
  * **Jura**: dataset retirado do [livro de Pierre Goovaerts](https://books.google.com.br/books/about/Geostatistics_for_Natural_Resources_Eval.html?id=CW-7tHAaVR0C&redir_esc=y);
  * **Walker Lake**: dataset retirado [livro de Isaaks & Srivastava](https://books.google.com.br/books/about/Applied_Geostatistics.html?id=vC2dcXFLI3YC&redir_esc=y)
  
> The jura data set from Pierre Goovaerts' book (see references below). It contains four data.frames: prediction.dat, validation.dat and transect.dat and juragrid.dat, and three data.frames with consistently coded land use and rock type factors, as well as geographic coordinates. The examples below show how to transform these into spatial (sp) objects in a local coordinate system and in geographic coordinates, and how to transform to metric coordinate reference systems.

## D | Módulos

* **Módulo 0 | Setup**
  * introdução ao conteúdo
  * objetivos
  * ambiente de desenvolvimento e stack
    * VS Code
    * conda
    * requirements
  * git/github
  * sobre os datasets
    * jura
    * lake_walker

* **Módulo 1 | Ingestão de dados em database**
  * SQlite3
  * criação de funções de utilidades
  * script de criação de database
  * script de criação tabelas
  * ingestão de dados "raw"

* **Módulo 2 | Qualidade de Dados e Validação Inical**
 
  * contagens
    * dados únicos, duplicidade
  * filtros, agrupamentos e joins
  * estatística básica

* **Módulo 4 | Análise Exploratória de Dados com Python**
  * tabelas em Python: Pandas e dataframes
  * dataviz: matplotlib e seaborn
  * automatizando criação de gráficos

## E | Recursos e Ferramentas

* [AI_GEOSTATS](https://wiki.52north.org/AI_GEOSTATS/WebHome)

## F | Referências Bibliográficas
