a = c(1,2,3)
b = c("x","y")
m=matrix(1:9, nrow=3)
List1 = list(a,b,m)
List2 = list(num=a,char=b,mat=m)
List2$num
sum(List2$char) # Errors out
sum(List2$num) #Works as the data is numeric
