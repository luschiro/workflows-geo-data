# Workflows de Geoestatística e Análise de Dados Geoespaciais

## Introdução e Metodologia

Este conteúdo é voltado a estudantes e profissionais com interesse em aplicações de geoestatística, partindo de uma perspectiva de análise de dados.

Serão realizados workflows para resolução de **problemas geológicos, geoestatísticos e geospaciais** aplicados principalmente à mineração e estimativa de recursos minerais, seguindo duas partes principais:

1. iremos montar um banco de dados simulando uma aplicação e, a partir dele, analisar nossos datases com queries **SQL**. Tentaremos responder algumas perguntas iniciais, checar a qualidade de nossos dados, gerar tabelas mais abstratas, etc;

2. para worklows mais avançados, usaremos o **Python** para a execução das nossas queries, gestão do banco de dados, análise exploratória e visualização de dados, e criação de modelos estatísticos mais específicos.

## Módulos

* **Módulo 0 - Introdução e Setup**
  * sobre os datasets
  * ambiente de desenvolvimento e stack

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
