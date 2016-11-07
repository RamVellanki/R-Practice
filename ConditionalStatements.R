a=2
b=10
c<-c(1:4)
d<-c(7:9)

#any,all
any(a>c) #Check if any element in a is greater than c
all(c<b) #Check if all elements are less than b
all(c<d)

#if condition
if(a<b){
  a+10
} else #else should be in the same line as }
{
  b+10
}

if(a<b){
  a+10
} else if(a>b){
  b+10
} else {
  a+b
}

ifelse(a>b, a+1, b+2) #Like conditional operator in C#. a>b ? a+1 : b+2

#loops
for(i in c(1:20)){
  print(i)
}

x=c('a','b','c','d')
for(i in c(1:4)){
  print(x[i])
}
for(i in seq_along(x)){ #If we don't know the length we can use seq_along
  print(x[i])
}
#for in
for(letter in x){
  print(letter)
}

#loop matrix
x=matrix(1:9, nrow=3)
for(i in seq_len(nrow(x))){
  for (j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

#while loop
i=0
while(i<10){
  print(i)
  i = i+1
}

#break
i=0
while(i<10){
  print(i)
  i = i+1
  if(i%%2 == 0){ #%% is for modulus here
    break
  }
}

