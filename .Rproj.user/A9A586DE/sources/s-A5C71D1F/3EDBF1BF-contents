library(ggplot2)
label <- c("Age","Female","Pressure","Interest","Medical")
mean  <- c(1.077,0.470,1.298,0.805,0.424) 
lower <- c(0.970,0.265,1.045,0.616,0.231)
upper <- c(1.777,0.874,1.602,1.060,0.759)

df <- data.frame(label, mean, lower, upper)

# reverses the factor level ordering for labels after coord_flip()
df$label <- factor(df$label, levels=rev(df$label))

library(ggplot2)
fp <- ggplot(data=df, aes(x=label, y=mean, ymin=lower, ymax=upper)) +
  geom_errorbar(width=0.5) + 
  geom_point(shape=15, size=3, fill="white") +
  geom_hline(yintercept=1, lty=2) +  # add a dotted line at x=1 after flip
  coord_flip() +  # flip coordinates (puts labels on y axis)
  xlab("Risk factors") + ylab("Odds Ratio (95% CI)") +
  theme(axis.text.x = element_text(size=40),
        axis.title.y = element_text(size=14,face="bold")) +
  scale_y_continuous() +
  theme_light() # use a white background
fp

#mean  <- c(1.077,0.470,1.298,0.805,0.424,3.720) 
#lower <- c(0.970,0.265,1.045,0.616,0.231,1.666)
#upper <- c(1.777,0.874,1.602,1.060,0.759,9.94)
