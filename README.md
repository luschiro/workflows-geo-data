# Workflows de Geoestatística e Análise de Dados Geoespaciais

## A | Introdução

Este conteúdo é voltado a estudantes e profissionais com interesse em aplicações de geoestatística, partindo de uma perspectiva de análise de dados.

## B | Metodologia

Serão realizados workflows com o objetivo de responder a **perguntas-chave** de diversos problemas geológicos e geospaciais aplicados principalmente à mineração e estimativa de recursos minerais.

### B.1 | Banco de Dados e SQL

Iremos montar um banco de dados SQL simples, simulando uma aplicação. A partir dele, iremos analisar os dados com queries SQL para responder algumas perguntas iniciais, checar a qualidade de nossos dados, e gerar tabelas mais abstratas.

### B.2 | Python

A linguagem de programção principal que será usada é o Python, que nos ajudará com a execução das nossas queries, gestão do banco de dados, análise exploratória e visualização, e criação de modelos estatísticos.

## C | Datasets

Serão utilizados os seguintes datasets:

* **Jura**: dataset retirado do [livro de Pierre Goovaerts](https://books.google.com.br/books/about/Geostatistics_for_Natural_Resources_Eval.html?id=CW-7tHAaVR0C&redir_esc=y);
  * > The jura data set from Pierre Goovaerts' book (see references below). It contains four data.frames: prediction.dat, validation.dat and transect.dat and juragrid.dat, and three data.frames with consistently coded land use and rock type factors, as well as geographic coordinates. The examples below show how to transform these into spatial (sp) objects in a local coordinate system and in geographic coordinates, and how to transform to metric coordinate reference systems.
* **Walker Lake**: dataset retirado [livro de Isaaks & Srivastava](https://books.google.com.br/books/about/Applied_Geostatistics.html?id=vC2dcXFLI3YC&redir_esc=y)

## D | Módulos

* **Módulo 0 - Introdução e Setup**
  * ambiente de desenvolvimento e stack
    * [VS Code](https://code.visualstudio.com/)
    * [miniconda](https://docs.conda.io/en/latest/miniconda.html)
    * [github](https://github.com/)
  * sobre os datasets
    * jura
    * lake_walker

* **Módulo 1 - Ingestão de dados em database**
  * [SQLite](https://www.sqlite.org/index.html)
  * criação de funções auxiliares
  * scripts de criação de database e de tabelas
  * ingestão de dados em camada *raw*
  
* **Módulo 2 - Qualidade de Dados e Validação Inical**
  * contagens, dados únicos, duplicidade
  * filtros, agrupamentos e joins
  * estatística básica
  * *window functions*

* **Módulo 3 - Análise Exploratória de Dados com Python**
  * notebooks Jupyter
  * pandas, scipy, numpy e seaborn
  * automatizando criação de gráficos

## E | Recursos e Ferramentas

* Python
  * [Site oficial](https://www.python.org/)

* ambientes virtuais
  * [documentação oficial](https://docs.conda.io/en/latest/miniconda.html)
  * [post tutorial 1](https://adrianovieira.gitlab.io/posts/conda/)
  * [post tutorial 2](https://www.monolitonimbus.com.br/conda-e-ambientes-virtuais/)

* git e github
  * [livro](https://git-scm.com/book/pt-br/v2) sobre git (PT)

* geoestatística
  * [AI_GEOSTATS](https://wiki.52north.org/AI_GEOSTATS/WebHome)
  * [geostatsguy](https://github.com/GeostatsGuy)
  * [Stanford Geostatistical Modeling Software - SGeMS](https://sgems.sourceforge.net/)
  * [GeoStats.jl](https://github.com/JuliaEarth/GeoStats.j)
