x<-sample(1:1000,200)
#plot normal dist
plot(x,dnorm(x), type="l")
plot(x,pnorm())
?pnorm
plot(pnorm(x, mean=mean(x),sd=sd(x)),type="l")

hist(x, prob=T)
lines(density(x), col=4, lwd=1) #works only with prob
library(psych)
describeBy(x)
t.test(x)
install.packages('nortest')
library(nortest)
ad.test(x)
