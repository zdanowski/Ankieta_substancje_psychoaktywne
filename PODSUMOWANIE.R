#Skrypt tworzy data.frame o nazwie nnn który pokazuje numeracje kolumn w dane.Rda . Jest to pomocne w orientacji.
load(file = "dane.Rda")
nazwy <- colnames(dane)
numery <- c(1:(length(nazwy)))
nnn <- data.frame(nazwy, numery)
remove(nazwy)
remove(numery)


# 1. Porównanie testem U manna-whitneya czy jest statystycznie istotna różnica
# między populacją osób sięgających po substancje nielegalne w odpowiedzi na pytania
# namawianie = W jakim stopniu zgadzasz się ze stwierdzeniem: Ktoś usilnie namawiał mnie do pójścia na studia/wybrania tego kierunku.
# ciekawe = W jakim stopniu zgadzasz się ze stwierdzeniem: Studia na które uczęszczam uważam za ciekawe i interesujące.
load(file = "dane.Rda")
legal <-
  subset.data.frame(dane, subset = dane$nielegal_ogol == 0) #subset NIEsiegajacych po nielegalne substancje
nielegal <-
  subset.data.frame(dane, subset = dane$nielegal_ogol == 1)#subset siegajacych po nielegalne substancje

#######W jakim stopniu zgadzasz się ze stwierdzeniem: Ktoś usilnie namawiał mnie do pójścia na studia/wybrania tego kierunku.
wilcox.test(legal$Namawianie, nielegal$Namawianie)
#Hipoteza zerowa - nie ma istonej różnicy między grupami.
#Wilcoxon rank sum test with continuity correction
#data:  legal$Namawianie and nielegal$Namawianie
#W = 17010, p-value = 0.01582 - HIPOTEZA ZEROWA ODRZUCONA
#alternative hypothesis: true location shift is not equal to 0

t.test(legal$Namawianie, nielegal$Namawianie) #czy można? kwestia kontrowersyjna.


######W jakim stopniu zgadzasz się ze stwierdzeniem: Moje studia uważam za ciekawe i interesujące.
wilcox.test(legal$Ciekawe, nielegal$Ciekawe)
#Hipoteza zerowa - nie ma istonej różnicy między grupami.
#data:  legal$Ciekawe and nielegal$Ciekawe
#W = 23814, p-value = 0.03942 HIPOTEZA ZEROWA ODRZUCONA
#alternative hypothesis: true location shift is not equal to 0



#2.
#Tu zaczna się skrypt z testem ChiKwadrat.
#Analizuję tu zależność między zmiennymi różnymi zmiennymi binarnymi (w przypadku "Namawianie" i "ciekawe" które są w skali likerta) a zmienną "nielegal_ogol".
#Pytanie: czemu w przypadku niektórych zmiennych wyskakuje komunikat "In chisq.test(tab) : Chi-squared approximation may be incorrect"?
#Te same dane wporwadzone do statistici dają takie same wyniki, ale bez komunikatu o błędzie.
#WSZYSTKIE KOLUMNY Dane.Rda:
#[1] "lp"                          "Wiek"                        "M=0/K=1"                     "Student"                     "Kierunek"
#[6] "rok"                         "Namawianie"                  "Ciekawe"                     "Substancje"                  "Medycyna"
#[11] "Kierunek_medyczny"           "Kofeina"                     "Nikotyna"                    "alkohol"                     "napoje_energertyzujące"
#[16] "dopalacze"                   "amfetamina"                  "kokaina"                     "marihuana/haszysz"           "srod_uspok_niezap_przez_lek"
#[21] "inne"                        "inne_nielegal"               "Podstawowe_nielegal"         "nielegal_ogol"

istotnenumer <- c()
istotnenazwa <- c()

v <- c(6, 7, 8, 10, 11, 12, 13, 14, 15, 16)
for (i in v) {
  n <- as.vector(t(dane[i]))
  print(paste(i, "-", names(dane[i]), " a nielegal_ogol"))
  
  tab <- table(n, dane$nielegal_ogol)
  chi <- chisq.test(tab)
  print(chi)
  p <- chi$p.value
  if (p < 0.05) {
    print(
      " p < 0.5 ISTOTNOŚC!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",
      quote = FALSE
    )
    istotnenumer <-
      c(istotnenumer, i) #Tworzy wektor z numerami kolumn(zmiennych) dla których p < 0.5
    istotnenazwa <-
      c(istotnenazwa, names(dane[i])) #Tworzy wektor z nazwami kolumn(zmiennych) dla których p < 0.5
  }
  print(
    "_____________________________________________________________________________________________________________________________________________________-"
    ,
    quote = FALSE
  ) #może da się to inaczej zrobić?
}


print(paste("Zmienne (i ich numery kolumn) dla których w teście chisquare p < 0.05"))
print(istotnenazwa)
print(istotnenumer)


p <- NULL
i <- NULL
n <- NULL
tab <- NULL
