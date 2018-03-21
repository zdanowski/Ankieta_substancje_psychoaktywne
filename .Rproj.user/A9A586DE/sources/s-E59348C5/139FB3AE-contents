---
title: "Opis zmiennych"
author: "Szymon Zdanowski"
date: "21 marca 2018"
output: html_document
---
Opis zmiennych pliku **Dane.Rda**, czyli podstawowego ```data.frame``` tej analizy.
```{r include=FALSE}
library("knitr", quietly = TRUE)
```

```{r echo=FALSE, message=FALSE, error=FALSE}

load(file = "dane.Rda")
Nazwa <- colnames(dane)
Numer <- c(1:(length(Nazwa)))
Typ <- c(rep("Numeryczna", 2), rep("Binarna", 2), "String", "Numeryczna", rep("Numeryczna (Likert 1-5)", 2,), "String", rep("Binarna", 15))
Wyt <-
c(
"Numer porządkowy",
"Wiek",
"Płeć M=0 K=1",
"Czy jest studentem?",
"Kierunek studiów",
"Rok studiów",
"Odp. na Pyt. 1",
"Odp na Pyt. 2",
"Jakich substanci używa podczas nauki?",
"Czy jest studentem medycyny (kierunku lekarskiego)?",
"Czy jest studentem kierunku medycznego? (lekarski, lekarsko-dentystyczny, fizjoterapia, ratownictwo, pielęgniarstwo, techniki dentystyczne, analityka medyczna",
"Kofeina",
"Nikotyna",
"Alkohol",
"Napoje energetyczne",
"Dopalacze",
"Amfetamina",
"Kokaina",
"Marihuana i/lub haszysz",
"Środki uspokające nieprzepisane przez lekarza",
"Inne substacje psychoaktywne",
"Czy wśród 'innych' substancji są jakieś nielegalne?",
"Czy wśród substacji z listy wybrano jakieś nielegalne?",
"Czy ogółem wymienieno jakiekolwiek substancje nielegalne?"
)
nnn <- data.frame(Numer, Nazwa, Wyt, Typ)
kable(nnn, col.names = c("Numer kolumny", "Nazwa", "Objaśnienie", "Typ zmiennej"))
```
