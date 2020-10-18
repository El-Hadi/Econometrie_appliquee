library(tidyverse)
library(readxl)
library(car)

df <- read_excel("/home/hadi/Téléchargements/chapitre02.xls")

df %>% 
  ggplot(aes(x=txs7098, y=txi7098))+
  geom_point()+
  geom_smooth(method = "lm")

model <- lm(txi7098~txs7098, data=df)

summary(model)

linearHypothesis(model, c("txs7098=1"))


model_rest <- lm(txi7098~txs7098, data=df[1:15,] )

summary(model_rest)


model_7079 <- lm(txi7079~txs7079, data=df)

summary(model_7079)


model_8089 <- lm(txi8089~txs8089, data=df)

summary(model_8089)


model_9098 <- lm(txi9098~txs9098, data=df)

summary(model_9098)


model_7074 <- lm(txi7074~txs7074, data=df)

summary(model_7074)





