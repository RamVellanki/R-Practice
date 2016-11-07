#Simple func
name = function(){
  print('Hello dude!')
}

name
name()

#func with args
name = function(k){
  print(paste('Hello', k)) #paste is used to concatenate string
}
name('Ram')

#returning value from function
rval = function(k){
  x<-"Hello Ram" #9 chars
  char = nchar(x)*k; #9 * k
  char #retruns this value 9 * k
}
rval(4)

#default arguments
defval = function(k=2){
  x<-"Hello Ram"
  char <- nchar(x)*k
  char
}

defval()
defval(3)

#multiple arguments
fun1 = function(a,b){
  a*b
}

fun1(3,3)

#passing vector as argument
meansd = function(a){
  x=sum(a)
  y=x/length(a)
  z=sd(a)
  print(x)
  print(y)
  print(z)
}

a = c(1:3)
meansd(a)

#using return statement
meansdret = function(a){
  x=sum(a)
  y=x/length(a)
  z=sd(a)
  return (x) #This will be returned
  return (y) #this statement will not get exccuted
  return (z) #this also will not be executed
}

meansdret(a)

#multiple values only last value is returned
meansd1 = function(a){
  x=sum(a)
  y=x/length(a)
  z=sd(a)
  x  
  y  
  z #Only this will be returned
}

meansd1(c(1:4))

#invisible function
invfun = function(a){
  invisible(sum(a))
}
invfun(c(1,2,3)) #since it is invisible it won't print the value
a=invfun(c(1,4,6)) #But though it is invisible it will assign the value
a


