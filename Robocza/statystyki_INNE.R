load(file = "dane.Rda")

x0 <-
  subset.data.frame(dane, subset = dane$Kierunek_medyczny == 0) #subset 1
x1 <-
  subset.data.frame(dane, subset = dane$Kierunek_medyczny == 1)#subset 2

wilcox.test(x0$Ciekawe, x1$Ciekawe) # p<0.05
t.test(x0$Ciekawe, x1$Ciekawe) # p<0.05


x0 <-
  subset.data.frame(dane, subset = dane$Kierunek_medyczny == 0) #subset 1
x1 <-
  subset.data.frame(dane, subset = dane$Kierunek_medyczny == 1)#subset 2

wilcox.test(x0$nielegal_ogol, x1$nielegal_ogol)


chisq.test(dane$`M=0/K=1`, dane$nielegal_ogol)

tab <- table(rob$Namawianie, rob$`M=0/K=1`)
tab

chisq.test(tab) #CZEMU? gdy argumentem jest tab i 2 dane jest to samo 
