library("tidyverse")

setwd("C:/CursoUFRRJ")

df <- read_csv("alcohol.csv")

glimpse(df)

# Não exibir em notação científica
options("digits" = 1) 
df$unemrate %>% head()

options("digits" = 2) 
df$unemrate %>% head()

options("digits" = 15) 
df$unemrate %>% head()

# Correção
as.numeric(df$beertax) %>% head()

parse_number(df$beertax) %>% head()

glimpse(df)

options("digits" = 3) 

df <- read_csv("alcohol.csv",
               col_types = cols(status = col_factor()),
               locale = locale(decimal_mark = ','))
glimpse(df)

summary(df)
# Letra a =======================================================

df %>% 
  summarise(Porcentagem_Abuso = mean(abuse)*100,
            Porcentagem_NaoAbusa = 100 - Porcentagem_Abuso)

# Letra b =======================================================
summary(df$unemrate)

df %>% 
  summarise(abuse = "Geral",
            Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n()) 

# Letra c =================================================
df %>% 
  summarise(abuse = "Geral",
            Mínimo = min(age),
            Média = mean(age),
            Mediana = median(age),
            Desvio = sd(age),
            Máximo = max(age),
            Amostra = n())

df %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(age),
            Média = mean(age),
            Mediana = median(age),
            Desvio = sd(age),
            Máximo = max(age),
            Amostra = n())

# Letra d ==============================================
df %>% 
  summarise(abuse = "Geral",
            Mínimo = min(educ),
            Média = mean(educ),
            Mediana = median(educ),
            Desvio = sd(educ),
            Máximo = max(educ),
            Amostra = n())

df %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(educ),
            Média = mean(educ),
            Mediana = median(educ),
            Desvio = sd(educ),
            Máximo = max(educ),
            Amostra = n())

# Letra e =============================================
df %>% 
  summarise(abuse = "Geral",
            Mínimo = min(married),
            Média = mean(married),
            Mediana = median(married),
            Desvio = sd(married),
            Máximo = max(married),
            Amostra = n())

df %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(married),
            Média = mean(married),
            Mediana = median(married),
            Desvio = sd(married),
            Máximo = max(married),
            Amostra = n())

# Letra f ===================================
df %>% 
  summarise(abuse = "Geral",
            Mínimo = min(famsize),
            Média = mean(famsize),
            Mediana = median(famsize),
            Desvio = sd(famsize),
            Máximo = max(famsize),
            Amostra = n())

df %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(famsize),
            Média = mean(famsize),
            Mediana = median(famsize),
            Desvio = sd(famsize),
            Máximo = max(famsize),
            Amostra = n())

# Letra g ==================================================
df %>% 
  summarise(Porcentagem = mean(white) * 100,
            Amostra = n())
df %>% 
  group_by(abuse) %>% 
  summarise(Porcentagem = mean(white) * 100,
            Amostra = n())

# Letra h ==================================
df %>% 
  filter(status == 1) %>% # Fora da força de trabalho
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(status == 1) %>% # Fora da força de trabalho
  group_by(abuse) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

# Letra i ==================================
df %>% 
  filter(status == 2) %>% # Desempregados
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(status == 2) %>% # Desempregados
  group_by(abuse) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

# Letra j ==============================
df %>% 
  filter(status == 1, white == 1) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(status == 1, white == 1) %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(status == 1, white == 0) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(status == 1, white == 0) %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

# Letra k ==============================
df %>% 
  filter(status == 2, white == 1) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(status == 2, white == 1) %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(status == 2, white == 0) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(status == 2, white == 0) %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

# Letra L ===========================
df %>% 
  filter(status == 1, age < 41) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(status == 1, age < 41) %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(status == 1, age >= 41) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(status == 1, age >= 41) %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

# Letra M ===========================
df %>% 
  filter(status == 2, age < 41) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(status == 2, age < 41) %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(status == 2, age >= 41) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(status == 2, age >= 41) %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

# Letra n =========================================
df %>% 
  filter(northeast == 1) %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(midwest == 1) %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(south == 1) %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

df %>% 
  filter(south == 0, midwest == 0, northeast == 0) %>% 
  group_by(abuse) %>% 
  summarise(Mínimo = min(unemrate),
            Média = mean(unemrate),
            Mediana = median(unemrate),
            Desvio = sd(unemrate),
            Máximo = max(unemrate),
            Amostra = n())

# Letra o =========================================
df %>% 
  select(unemrate, age, educ,
         beertax, cigtax, ethanol) %>% 
  cor()

# Letra p =========================================

esquisse::esquisser(df,
                    viewer = "browser")

ggplot(df) +
 aes(x = beertax, y = ethanol) +
 geom_point(shape = "circle", size = 1.5, colour = "#112446") +
 theme_minimal()

ggplot(df) +
 aes(x = ethanol, y = unemrate) +
 geom_point(shape = "circle", size = 1.5, colour = "#112446") +
 theme_minimal()
