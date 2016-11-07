#### Descriptive Statistics ####
summary(LungCapData)
sum(LungCapData$LungCap)
mean(LungCapData$LungCap)
sd(LungCapData$LungCap)
var(LungCapData$LungCap)
quantile(LungCapData$LungCap,c(0.25,0.5,0.75,1))
cov(LungCapData[,c(1:3)]) #Covariance can only be calculated on numerics. So this notation says, all rows and 3 columns.
cor(LungCapData[,c(1:3)])

#### One Sample z-test ####
install.packages('BSDA')
library('BSDA')
z.test(x=LungCapData$LungCap, alternative="two.sided", mu = 8, sigma.x = 2.662008, conf.level = 0.95)

#### One Sample T Test ####
t.test(x=LungCapData$LungCap, alternative="two.sided", mu = 8, conf.level = 0.95)

#### One Sample Proportion ####
binom.test(x=8, n=25, p=0.5, alternative = "two.sided", conf.level = 0.95)
prop.test(x=8, n=25, p=0.5, alternative = "two.sided", conf.level = 0.95)

#### Table ####
x=table(LungCapData$Gender, LungCapData$Smoke)
