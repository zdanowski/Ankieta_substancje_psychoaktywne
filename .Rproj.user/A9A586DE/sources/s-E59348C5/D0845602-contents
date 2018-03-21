#Logistic regression implementadan
load(file = "dane.Rda")
load(file = "PODSUMOWANIiE.R")
library(ggplot2)
library(fortunes)



danelog <- subset(dane, select = c(3, 6, 7, 8, 10:16, 24))
row.names(dane) <- NULL #po co ???????
model <-
  glm(nielegal_ogol ~ .,
      family = binomial(link = 'logit'),
      data = danelog)

summary(model)
anova(model, test = "Chisq")
  

#statystyka Walda,