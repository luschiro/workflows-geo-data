# Workflows de Análise de Dados para Geologia

## Introdução

Este conteúdo é voltado a pessoas com interesse em análise de dados. Serão realizados workflows e análises para resolução de problemas introdutórios, utilizando dados geológicos, seguindo dois passos principais:

* **estruturação e validação de dados com SQL**

  * criação de um banco de dados e análises com queries SQL; checagem de qualidade de dados, criação de tabelas mais limpas e mais abstratas, anáise de dados inicial, etc;
    * stack: *SQL*, *DB Browser SQLite*
* **análise exploratória com Python**
  * gestão do banco de dados e execução de queries; análise exploratória de dados, criação de com visualização de dados;
    * stack: *Python*, *libs: pandas, seaborn, matplotlib*
* **modelos lineares**
  * criação de modelos lineares de regressão utilizando valores de teor.
    * stack: *Python*, *libs: pandas, seaborn, matplotlib, sklearn*

## Organização do Repo

| Módulo | Tema | Link |
| --     | --   | -    |
| 1 | Qualidade de Dados e Validação com SQL                  | [link](https://github.com/luschiro/workflows-geo-data/tree/main/modulo_1) |
| 2 | Análise Exploratória e Visualização de Dados com Python | [link](https://github.com/luschiro/workflows-geo-data/tree/main/modulo_2) |
| 3 | Criando modelos lineares com Python                     | [link](https://github.com/luschiro/workflows-geo-data/tree/main/modulo_3) |

## Recursos e Ferramentas

* Conda e ambientes virtuais
  * [documentação oficial](https://docs.conda.io/en/latest/miniconda.html)
  * [post tutorial 1](https://adrianovieira.gitlab.io/posts/conda/)
  * [post tutorial 2](https://www.monolitonimbus.com.br/conda-e-ambientes-virtuais/)

* Git e Github
  * [livro sobre git (PT)](https://git-scm.com/book/pt-br/v2)

* SQL
  * [Introdução à Linguagem SQL: Abordagem Prática Para Iniciantes](https://www.amazon.com.br/Introdu%C3%A7%C3%A3o-Linguagem-SQL-Abordagem-Iniciantes/dp/8575225014/ref=asc_df_8575225014/?tag=googleshopp00-20&linkCode=df0&hvadid=379715966142&hvpos=&hvnetw=g&hvrand=7258438041092360003&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1001773&hvtargid=pla-424463399897&psc=1)
  * [SQLite](https://www.sqlite.org/index.html)

* Python
  * [Site oficial](https://www.python.org/)
  * [PEP8 - estilo/boas práticas](https://peps.python.org/pep-0008/)
  * [Playlist Python - EN](https://www.youtube.com/playlist?list=PL-osiE80TeTt2d9bfVyTiXJA-UTHn6WwU)
  * [referências Téo Me Why](https://github.com/TeoMeWhy/teomerefs)

* Geoestatística
  * [AI_GEOSTATS](https://wiki.52north.org/AI_GEOSTATS/WebHome)
  * [geostatsguy](https://github.com/GeostatsGuy)
  * [Stanford Geostatistical Modeling Software - SGeMS](https://sgems.sourceforge.net/)
  * [GeoStats.jl](https://github.com/JuliaEarth/GeoStats.j)

## Ambiente de Desenvolvimeto
  
* [VS Code](https://code.visualstudio.com/) - editor de código
* [miniconda](https://docs.conda.io/en/latest/miniconda.html) - organizador de ambientes virtuais
* [github](https://github.com/) - repositórios remotos para colaboração
* [DB Browser for SQLite](https://sqlitebrowser.org/) - gerenciador de databases SQLite

## Sobre os Datasets

Serão utilizados os seguintes datasets:

* **Jura**: dataset retirado do [livro de Pierre Goovaerts](https://books.google.com.br/books/about/Geostatistics_for_Natural_Resources_Eval.html?id=CW-7tHAaVR0C&redir_esc=y);

* **Walker Lake**: dataset retirado [livro de Isaaks & Srivastava](https://books.google.com.br/books/about/Applied_Geostatistics.html?id=vC2dcXFLI3YC&redir_esc=y)
  
> The jura data set from Pierre Goovaerts' book (see references below). It contains four data.frames: prediction.dat, validation.dat and transect.dat and juragrid.dat, and three data.frames with consistently coded land use and rock type factors, as well as geographic coordinates. The examples below show how to transform these into spatial (sp) objects in a local coordinate system and in geographic coordinates, and how to transform to metric coordinate reference systems.
