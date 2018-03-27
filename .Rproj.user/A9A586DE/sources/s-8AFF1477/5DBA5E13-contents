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

k1 <- dane$Medycyna
k2 <- unique(k1)


for(i in k2){
  print(100*(sum(k1  == i & dane$nielegal_ogol == 1))/(sum(k1 == i)))
  print(paste("x =",i,sum(k1 == i & dane$nielegal_ogol == 1), "z" ,sum(k1 == i)))
}

