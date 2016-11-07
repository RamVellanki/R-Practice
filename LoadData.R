datacsv1 = read.csv(file.choose(), header=T)  #file.choose() opens window to select file
datacsv2 = read.csv(file="c:/Uesrs/xyz/data.csv", header = T)
datacsv3 = read.table(file.choose(), header=T, sep=",") #This allows us to use seperator other than comma
datacsv4 = read.table(file.choose(), header=T, sep=",",nrow=10) #Gets only 10 rows
datacsv5 = read.table(file.choose(), header=T, sep=",",nrow=10, skip=5) #Skip first 5 rows and gets only 10 rows
