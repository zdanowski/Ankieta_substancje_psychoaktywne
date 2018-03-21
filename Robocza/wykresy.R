#oblicza jaki procent używało substancji psychoaktywnych wg roku
procenty <- c()
for (i in 1:6) {
  newdata <- subset(dane, dane$rok == i)
  nl <- subset(newdata,
               newdata$nielegal_ogol == 1)
  print(paste((100 * (nrow(
    nl
  ) / (
    nrow(newdata)
  ))), nrow(nl), "z", nrow(newdata)))
  procenty <- c(procenty, (100 * (nrow(nl) / (nrow(
    newdata
  )))))
}
#robi z tego wykres

ggplot(rob1) +
  geom_bar(mapping = aes(x = rob1$lata, y = rob1$procenty),
           stat = "identity") +
  scale_x_continuous(breaks = seq(1, 6))





geom_histogram(
  mapping = aes(legal$Ciekawe, y = ..density..),
  fill = alpha("green", 0.5),
  binwidth = 1
) +
  geom_histogram(
    mapping = aes(nielegal$Ciekawe, y = ..density..),
    fill = alpha("red", 0.5),
    binwidth = 1
  ) 

X1 <- nielegal
x0 <- legal
ggplot() +
  geom_density(
    aes(x0$Ciekawe, y = ..density..),
    colour = "green",
    fill = alpha("green", 0.3),
    bw = 1
  ) +
  geom_density(
    aes(x1$Ciekawe, y = ..density..),
    colour = "red",
    fill = alpha("red", 0.3),
    bw = 1
  ) +
  scale_x_continuous(breaks = seq(1, 5, 1), minor_breaks = seq(1, 5, 1))




