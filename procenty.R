latka <- unique(dane$Wiek)


for(i in latka){
print(100*(sum(dane$Wiek == i & dane$nielegal_ogol == 1))/(sum(dane$Wiek == i)))
print(paste(sum(dane$Wiek == i & dane$nielegal_ogol == 1), "z" ,sum(dane$Wiek == i)))
}

sexxx <- unique(dane$`M=0/K=1`)


for(i in sexxx){
  print(100*(sum(dane$`M=0/K=1` == i & dane$nielegal_ogol == 1))/(sum(dane$`M=0/K=1` == i)))
  print(paste(sum(dane$`M=0/K=1` == i & dane$nielegal_ogol == 1), "z" ,sum(dane$`M=0/K=1` == i)))
}


#_____________________________
#Właściwy skrypt

k1 <- dane$rok
k2 <- dane$nielegal_ogol
k3 <- unique(k1)


for(i in k3){
  print(100*(sum(k1  == i & k2 == 1))/(sum(k1 == i)))
  print(paste("x =",i,sum(k1 == i & k2 == 1), "z", sum(k1 == i)))
}

