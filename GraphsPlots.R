install.packages('scatterplot3d')
install.packages('rgl')

library(rgl)
library(scatterplot3d)
plot(1:20, 1:20) #plots(1,1) ... (20,20)
plot(1:20, 1:20, type = 'p') #point plot - this is default
plot(1:20, 1:20, type = 'l') #line plot
plot(1:20, 1:20, type = 'h') #histogram plot
plot(1:20, 1:20, type = 's') #step plot
plot(1:20, 1:20, pch=1:20, col=1:20) #each point will have diff color and shape
plot(1:20, 1:20, pch=1:20, col=1:20, cex=2) #cex gives the size of the symbol on the plot


#load lungcapdata
Lungcapdata = read.table(file="LungCapData.txt", header = T, sep ="\t")
head(Lungcapdata)

#plot examples
plot(Lungcapdata$Age, Lungcapdata$Height, main="AGE-HEIGHT Graph")
plot(Lungcapdata$Age, Lungcapdata$Height, main="AGE-HEIGHT Graph", font.main=2) #change font
plot(Lungcapdata$Age, Lungcapdata$Height, main="AGE-HEIGHT Graph", xlim=c(0,30), pch=1, las=1, col=3, cex=0.5) #change font
plot(Lungcapdata$Age, Lungcapdata$Height, main="AGE-HEIGHT Graph", font.main=2, font.lab=3, col.lab=4, font.axis=6) #
plot(Lungcapdata$Age, Lungcapdata$Height, main="AGE-HEIGHT Graph", font.main=2, font.lab=3, col.lab=4, font.axis=6, pch='$') #
plot(Lungcapdata$Age[Lungcapdata$Gender=="male"], Lungcapdata$Height[Lungcapdata$Gender=="male"], pch='m', col=4)

#plot on top of other graph
plot(Lungcapdata$Age[Lungcapdata$Gender=="male"], Lungcapdata$Height[Lungcapdata$Gender=="male"], pch='m', col=4, xlab="Age", ylab="Height")
points(Lungcapdata$Age[Lungcapdata$Gender=="female"], Lungcapdata$Height[Lungcapdata$Gender=="female"], pch='f', col=5) #Plot on top of the previous plot - using points

#linear regression line
plot(Lungcapdata$Age[Lungcapdata$Gender=="female"], Lungcapdata$Height[Lungcapdata$Gender=="female"], pch='f', col=3, xlab="Age", ylab="Height")
abline(lm(Lungcapdata$Height[Lungcapdata$Gender=="female"]~Lungcapdata$Age[Lungcapdata$Gender == "female"]), col=2, lwd=4) #lm is linear model lwd is line width. plots on top of prev plot

#How lm works
lm1 = lm(Lungcapdata$Height[Lungcapdata$Gender=="female"]~Lungcapdata$Age[Lungcapdata$Gender=="female"])
lm1 #prints beta0 and beta1 from simple regression.
summary(lm1)

#par - partitions the plot area
par(mfrow=c(1,2)) #this command divides the complete graph area into 1 row and 2 columns
plot(Lungcapdata$Age[Lungcapdata$Gender=="female"], Lungcapdata$Height[Lungcapdata$Gender=="female"], pch='f', col=3, xlab="Age", ylab="Height")
abline(lm(Lungcapdata$Height[Lungcapdata$Gender=="female"]~Lungcapdata$Age[Lungcapdata$Gender == "female"]), col=2, lwd=4) #lm is linear model lwd is line width. plots on top of prev plot
plot(Lungcapdata$Age[Lungcapdata$Gender=="male"], Lungcapdata$Height[Lungcapdata$Gender=="male"], pch='m', col=4, xlab="Age", ylab="Height")
abline(lm(Lungcapdata$Height[Lungcapdata$Gender=="male"]~Lungcapdata$Age[Lungcapdata$Gender == "male"]), col=5, lwd=4) #lm is linear model lwd is line width. plots on top of prev plot
par(mfrow=c(1,1)) #reset the plot area

#abline
plot(Lungcapdata$Age[Lungcapdata$Gender=="male"], Lungcapdata$Height[Lungcapdata$Gender=="male"], pch='m', col=4, xlab="Age", ylab="Height")
abline(50,1,col=3,lwd=4)

#axes
plot(Lungcapdata$Age,Lungcapdata$Height, xlab="Age", ylab="Height", axes = F)
axis(side=1, at=c(7, mean(Lungcapdata$Age),15), labels=c("child", "young", "old"))
axis(side=2, at=c(55, mean(Lungcapdata$Height),80), labels=c("short", "mid", "tall"))
axis(side=3, at=c(7, mean(Lungcapdata$Age),15), labels=c("child", "young", "old"))
axis(side=4, at=c(55, mean(Lungcapdata$Height),80))

scatterplot3d(Lungcapdata$Age, Lungcapdata$Height, Lungcapdata$LungCap, pch=16, highlight.3d = TRUE, type="h", main= "3D Scatterplot") #3 dimentsions age, heigth and lungcap
plot3d(Lungcapdata$Age, Lungcapdata$Height, Lungcapdata$LungCap, pch=16, col=2, size=1) #this is from RGL

#box plots
boxplot(Lungcapdata$LungCap)
boxplot(Lungcapdata$LungCap, main="Title", xlab="LungCap", ylab="LungCap", col=2)
boxplot(Lungcapdata$LungCap~Lungcapdata$Smoke, main="Title", xlab="LungCap", ylab="LungCap", col=2) #Compare side by side
boxplot(Lungcapdata$LungCap~Lungcapdata$Smoke, main="Title", xlab="LungCap", ylab="LungCap", col=c(2,4)) #Compare side by side
boxplot(Lungcapdata$LungCap[Lungcapdata$Smoke == "no"], Lungcapdata$LungCap[Lungcapdata$Smoke=="yes"])

#cut and boxplot
Agegroup = cut(Lungcapdata$Age, breaks=c(0,13,15,17,25), labels=c("<13", "14-15", "16-17", "18+"))
Agegroup
boxplot(Lungcapdata$LungCap~Lungcapdata$Smoke*Agegroup)
boxplot(Lungcapdata$LungCap~Lungcapdata$Smoke*Agegroup, las = 2)
boxplot(Lungcapdata$LungCap~Lungcapdata$Smoke*Agegroup, las = 2, col=c(3,2))
box() #surrounds the box with plot

#axes and boxplot
boxplot(Lungcapdata$LungCap~Lungcapdata$Smoke*Agegroup, las=2, col=c(3,2), axes = F)
axis(2, at=seq(0,20,1), las=1)
axis(1,at=c(1,5,3,5,4,5,6,6), labels=c("<13", "14-15", "16-17", "18+"), las=2)
legend(x=6.5, y=4, legend = c("Non-Somker", "Smoker"),col=c(3,2),pch = 17)
box()

#bar graphs
count=table(Lungcapdata$Gender)
count
percent=count/length(Lungcapdata$Gender)
percent
barplot(count)
barplot(percent)
barplot(percent, main="Title", xlab="Gender", ylab="%")
barplot(percent, main="Title", xlab="Gender", ylab="%", las=1)
barplot(percent, main="Title", xlab="Gender", ylab="%", las=1, ylim=c(0,0.9))
barplot(percent, main="Title", xlab="%", ylab="Gender", las=1, xlim=c(0,0.5), names.arg = c("Female", "Male"), horiz = T)
barplot(percent, main="Title", xlab="%", ylab="Gender", las=1, xlim=c(0,0.5), names.arg = c("Female", "Male"), horiz = T, col=c(2,4))

#histograms
hist(Lungcapdata$LungCap, freq=T)
hist(Lungcapdata$LungCap, freq = F) #freq false = prob true
hist(Lungcapdata$LungCap, prob=T)
lines(density(Lungcapdata$LungCap), col=4, lwd=1) #works only with prob
