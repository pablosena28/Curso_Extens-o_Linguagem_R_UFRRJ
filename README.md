# Introdução à Análise de Dados em R — UFRRJ

Portfólio acadêmico desenvolvido durante o curso de extensão **Introdução à Análise de Dados em R**, da Universidade Federal Rural do Rio de Janeiro (UFRRJ).

O repositório registra uma trajetória prática em R: importação e tratamento de bases, transformação com `tidyverse`, estatística descritiva, comparação entre grupos, visualização e produção de um relatório reproduzível em R Markdown.

## Projeto em destaque

### Desigualdades regionais do PIB per capita nos municípios do Rio de Janeiro

O [trabalho final](Trabalho_Final_Pablo.Rmd) realiza uma análise exploratória dos indicadores socioeconômicos municipais, com foco na distribuição do **PIB per capita** e nas diferenças entre as regiões do estado do Rio de Janeiro.

A análise inclui:

- agrupamento dos municípios por região;
- média, mediana, quartis, amplitude e dispersão;
- variância, desvio-padrão e intervalo interquartil;
- assimetria e curtose;
- distribuição de frequência dos municípios;
- histograma do PIB per capita;
- boxplots comparativos por região;
- interpretação das desigualdades territoriais observadas.

Os resultados apontam elevada dispersão e assimetria positiva na distribuição, indicando concentração de valores mais altos em poucos municípios e diferenças relevantes entre as regiões fluminenses.

## Competências demonstradas

| Área | Aplicação |
|---|---|
| Importação de dados | Leitura de CSV, CSV2 e RDS com R base e `readr` |
| Qualidade dos dados | Tratamento de cabeçalhos, codificação Latin-1, separadores e marcas decimais |
| Transformação | Conversão de tipos, fatores, datas, renomeação de colunas e limpeza numérica |
| Manipulação | Filtros, seleção, agrupamentos e sumarizações com `dplyr` |
| Estatística descritiva | Média, mediana, quartis, variância, desvio-padrão, IQR, assimetria e curtose |
| Análise segmentada | Comparações por região, idade, situação laboral e outros grupos |
| Associação | Matriz de correlação entre variáveis quantitativas |
| Visualização | Dispersões, histogramas e boxplots com `ggplot2` |
| Comunicação | Relatório dinâmico em R Markdown com tabelas e interpretação |

## Conteúdo do repositório

| Material | Conteúdo principal |
|---|---|
| [Lista de Exercícios 1](Lista_de_Exercícios1_.R) | Importação de CSV/RDS, inspeção de estruturas, datas, fatores, codificação, nomes de colunas e conversão de números no padrão brasileiro |
| [Lista de Exercícios 2](Lista_de_Exercícios2_.R) | Estatísticas descritivas gerais e por grupos, filtros combinados, correlações e gráficos de dispersão |
| [Trabalho Final](Trabalho_Final_Pablo.Rmd) | Análise exploratória do PIB per capita municipal do Rio de Janeiro e comparação regional |

## Tecnologias

- R e RStudio;
- R Markdown e `knitr`;
- `tidyverse`;
- `readr`, `dplyr`, `ggplot2`, `tibble`;
- `moments` para assimetria e curtose;
- `flextable` e `knitr::kable` para tabelas;
- `esquisse` como apoio à exploração visual.

## Como executar

### 1. Preparar o ambiente

Instale o [R](https://cran.r-project.org/) e o [RStudio](https://posit.co/download/rstudio-desktop/). Depois, clone o repositório:

```bash
git clone https://github.com/pablosena28/Curso_Extens-o_Linguagem_R_UFRRJ.git
cd Curso_Extens-o_Linguagem_R_UFRRJ
```

### 2. Instalar os pacotes

```r
install.packages(c(
  "tidyverse",
  "readr",
  "dplyr",
  "ggplot2",
  "knitr",
  "moments",
  "tibble",
  "flextable",
  "esquisse"
))
```

### 3. Disponibilizar as bases

Os scripts foram produzidos em aula e fazem referência a bases externas que não estão versionadas neste repositório:

| Arquivo esperado | Utilizado em |
|---|---|
| `base_acoes.csv` | Lista 1 |
| `base_acionistas.rds` | Lista 1 |
| `DadosOriginais2.csv` | Lista 1 |
| `alcohol.csv` | Lista 2 |
| `data/municipios_rj5.csv` | Trabalho final |

Para reproduzir as análises, coloque cada base no caminho indicado pelo respectivo script.

### 4. Ajustar o diretório

As listas originais utilizam `setwd("C:/CursoUFRRJ")`. Substitua esse caminho pelo local do repositório em seu computador ou abra um projeto do RStudio na pasta raiz.

Para o trabalho final, mantenha a base municipal nesta estrutura:

```text
data/
└── municipios_rj5.csv
```

### 5. Executar

As listas podem ser executadas por blocos no RStudio. Para renderizar o trabalho final:

```r
rmarkdown::render("Trabalho_Final_Pablo.Rmd")
```

O documento está configurado para gerar um arquivo Word.

## Estrutura

```text
.
├── Lista_de_Exercícios1_.R
├── Lista_de_Exercícios2_.R
├── Trabalho_Final_Pablo.Rmd
└── README.md
```

## Decisões técnicas e metodológicas

- A leitura dos arquivos considera separadores e marcas decimais usados no Brasil.
- Tipos de dados são inspecionados antes da análise para evitar operações incorretas.
- Estatísticas gerais são comparadas com resultados segmentados por grupos.
- Média e mediana são analisadas em conjunto diante de distribuições assimétricas.
- Medidas de dispersão complementam as medidas de posição.
- Correlação é tratada como associação, não como evidência de causalidade.
- Gráficos são utilizados como ferramentas de diagnóstico e comunicação.
- A análise territorial considera que diferenças regionais podem refletir estruturas econômicas distintas.

## Contexto acadêmico

Este repositório foi construído por **Pablo Sena** durante um curso de extensão da **UFRRJ**, como parte da formação prática em análise de dados com R. O trabalho dialoga com interesses em indicadores socioeconômicos, análise territorial e produção de evidências para políticas públicas.

## Próximas melhorias

- incluir ou documentar as fontes públicas das bases utilizadas;
- substituir caminhos absolutos pelo pacote `here`;
- criar um projeto `.Rproj` na raiz;
- adotar `renv` para registrar as versões dos pacotes;
- separar códigos, dados e resultados em diretórios próprios;
- renderizar o trabalho final também em HTML;
- adicionar os principais gráficos ao README;
- incluir validações automáticas de tipos e valores ausentes.

## Autor

**Pablo Sena**

- GitHub: [pablosena28](https://github.com/pablosena28)
