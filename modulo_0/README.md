# Módulo 0 | Introdução e Setup

## Apresentação e Objetivos

Esta trilha foi feita para ajudar pessoas iniciantes em análise de dados e em geoestatística. Ela foi feita como parte do meu próprio estudo pois, como dizem, uma das das melhores formas de aprender é explicar um conceito para outra pessoa.

Assim sendo, temos como objetivos:

* organizar um ambiente de desenvolvimento
* fazer queries SQL para validar e transformar nossos dados
* realizar uma análise exploratória e visualizar os dados com Python
* aplicar conceitos de machine learning e criar modelos
* aprender os ceonceitos de **geoestatística** em um ambiente de dados

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

## Criando um banco de dados SQLite no DB Browser

* importando dados de um arquivo .csv
* verificando tabela

### Editor SQL

* fazendo nossa primeira consulta
* SQL básico
