# install.packages("tidyverse")

library(tidyverse)

setwd("C:/CursoUFRRJ")

# Questao 1 -------------------------------------------------

# 1. Clique com o 'botao' direito do mouse sobre o arquivo;
# 2. Abrir com bloco de notas;

# 1a maneira: Rbase

df <- read.csv2('base_acoes.csv')

head(df) # 6 primeiras linhas
tail(df) # 6 últimas linhas

# Exibe toda base de dados
str(df) 
glimpse(df)

# Converter em data
df$DATA_ULT_COT <- as.Date(df$DATA_ULT_COT)
df$DATA_ULT_BAL <- as.Date(df$DATA_ULT_BAL)

glimpse(df)

# 2a maneira - Tidyverse

df <- read_csv2('base_acoes.csv')

glimpse(df)

# Questão 2 -------------------------------------------------

# 1a maneira: tidyverse - readr

df2 <- read_rds('base_acionistas.rds')

glimpse(df2)

# 2a maneira: Rbase
df2 <- readRDS('base_acionistas.rds')

glimpse(df2)

# Questão 3 -------------------------------------------------

# 1. Clique com o 'botao' direito do mouse sobre o arquivo;
# 2. Abrir com bloco de notas;
# 3. Observe que o separador é o ponto e vírgula.

df3 <- read_csv2('DadosOriginais2.csv')

glimpse(df3)

# Pesquisar no google as mensagens de erro!

# 1a maneira: Tidyverse
df3 <- read_csv2('DadosOriginais2.csv',
                 skip = 1)

glimpse(df3)

df3 <- read_csv2('DadosOriginais2.csv',
                 skip = 1,
                 col_names = "X",
                 locale = locale(decimal_mark = ',',
                                 encoding = "Latin1"))
                    
glimpse(df3)

# Abrir o arquivo csv no bloco de notas
# Copiar/colar os nomes das variáveis

# Criar um vetor com os nomes das variáveis
nomes <- c('POSICAO',
           'MUNICIPIO',
           'REGIAO',
           'MORTAL_INFANTIL',
           'NUM_ESTAB_SAUDE_SUS',
           'TX_ESGOTO',
           'TX_URBANIZACAO',
           'NUM_LEITOS',
           'NUM_LEITOS_OBTESTRICA',
           'NUM_ESTAB_SAUDE',
           'NUM_HOSPITAIS',
           'NUM_POSTOS_SAUDE',
           'NUM_EQUIPES_SAUDE',
           'TX_ANALFAB',
           'TX_DESEMPREGO_16MAIS',
           'RECEITAS_REALIZADAS',
           'DESPESPESAS_EMPENHADAS',
           'NUM_MATRIC_EF',
           'NUM_MATRIC_EM',
           'NUM_DOCENTES_EF',
           'NUM_DOCENTES_EM',
           'NUM_ESCOLAS_EF',
           'NUM_ESCOLAS_EM',
           'POPULACAO',
           'RENDA_PER_CAPITA_MEIOSAL',
           'PESSOAL_OCUPADO',
           'TX_HOMICIDIO_100MIL',
           'NUM_HOMICIDIOS',
           'HOMICIDIOS_OCULTOS',
           'TX_HOMICIDIOS_ESTIM_100MIL',
           'PIB',
           'IDH',
           'GASTOS_PUBLICOS',
           'IDEB_INI_EF',
           'IDEB_FIM_EF',
           'NUM_MATRICULAS_EF',
           'NUM_MATRICULAS_EM',
           'TX_ESCOLARIDADE_6A14'
)

# Renomear as colunas
colnames(df3) <- nomes

# Converter a coluna região em factor
df3$REGIAO <- as.factor(df3$REGIAO)

glimpse(df3)

# 2a maneira: Tidyverse

# Criar um vetor com os nomes das variáveis
nomes <- c('POSICAO',
           'MUNICIPIO',
           'REGIAO',
           'MORTAL_INFANTIL',
           'NUM_ESTAB_SAUDE_SUS',
           'TX_ESGOTO',
           'TX_URBANIZACAO',
           'NUM_LEITOS',
           'NUM_LEITOS_OBTESTRICA',
           'NUM_ESTAB_SAUDE',
           'NUM_HOSPITAIS',
           'NUM_POSTOS_SAUDE',
           'NUM_EQUIPES_SAUDE',
           'TX_ANALFAB',
           'TX_DESEMPREGO_16MAIS',
           'RECEITAS_REALIZADAS',
           'DESPESPESAS_EMPENHADAS',
           'NUM_MATRIC_EF',
           'NUM_MATRIC_EM',
           'NUM_DOCENTES_EF',
           'NUM_DOCENTES_EM',
           'NUM_ESCOLAS_EF',
           'NUM_ESCOLAS_EM',
           'POPULACAO',
           'RENDA_PER_CAPITA_MEIOSAL',
           'PESSOAL_OCUPADO',
           'TX_HOMICIDIO_100MIL',
           'NUM_HOMICIDIOS',
           'HOMICIDIOS_OCULTOS',
           'TX_HOMICIDIOS_ESTIM_100MIL',
           'PIB',
           'IDH',
           'GASTOS_PUBLICOS',
           'IDEB_INI_EF',
           'IDEB_FIM_EF',
           'NUM_MATRICULAS_EF',
           'NUM_MATRICULAS_EM',
           'TX_ESCOLARIDADE_6A14'
)

df3 <- read_csv2('DadosOriginais2.csv',
                 skip = 1,
                 col_names = nomes,
                 col_types = cols(REGIAO = col_factor()),
                 locale = locale(decimal_mark = ',',
                                 encoding = "Latin1")
                 )

glimpse(df3)

# 3a maneira: Rbase

df3 <- read.csv2('DadosOriginais2.csv', 
                 header = FALSE, 
                 dec = ",")

glimpse(df3)

# Criar um vetor com os nomes das variáveis
nomes <- c('POSICAO',
           'MUNICIPIO',
           'REGIAO',
           'MORTAL_INFANTIL',
           'NUM_ESTAB_SAUDE_SUS',
           'TX_ESGOTO',
           'TX_URBANIZACAO',
           'NUM_LEITOS',
           'NUM_LEITOS_OBTESTRICA',
           'NUM_ESTAB_SAUDE',
           'NUM_HOSPITAIS',
           'NUM_POSTOS_SAUDE',
           'NUM_EQUIPES_SAUDE',
           'TX_ANALFAB',
           'TX_DESEMPREGO_16MAIS',
           'RECEITAS_REALIZADAS',
           'DESPESPESAS_EMPENHADAS',
           'NUM_MATRIC_EF',
           'NUM_MATRIC_EM',
           'NUM_DOCENTES_EF',
           'NUM_DOCENTES_EM',
           'NUM_ESCOLAS_EF',
           'NUM_ESCOLAS_EM',
           'POPULACAO',
           'RENDA_PER_CAPITA_MEIOSAL',
           'PESSOAL_OCUPADO',
           'TX_HOMICIDIO_100MIL',
           'NUM_HOMICIDIOS',
           'HOMICIDIOS_OCULTOS',
           'TX_HOMICIDIOS_ESTIM_100MIL',
           'PIB',
           'IDH',
           'GASTOS_PUBLICOS',
           'IDEB_INI_EF',
           'IDEB_FIM_EF',
           'NUM_MATRICULAS_EF',
           'NUM_MATRICULAS_EM',
           'TX_ESCOLARIDADE_6A14'
)

# Renomear as colunas
colnames(df3) <- nomes

# Retirar a primeira linha
df3 <- slice(df3, -1)

# Converter a coluna região em factor
df3$REGIAO <- as.factor(df3$REGIAO)

glimpse(df3)

# Alguns experimentos

# Exibir o conteúdo
df3$RECEITAS_REALIZADAS
df3$MORTAL_INFANTIL 

# Converter em números
as.numeric(df3$MORTAL_INFANTIL) 
parse_number(df3$MORTAL_INFANTIL)

z <- str_remove_all(df3$RECEITAS_REALIZADAS, "\\.")
z

w <- str_replace(z, ",", ".")
w

d <- parse_number(w)
d

# Correção
glimpse(df3)

tam <- c(1, 4:38)
tam

for (i in tam) {
  df3[,i] <- str_remove_all(df3[,i], "\\.")
  df3[,i] <- str_replace(df3[,i], ",", ".")
  df3[,i] <- as.numeric(df3[,i])
}

glimpse(df3)

df3$MUNICIPIO
