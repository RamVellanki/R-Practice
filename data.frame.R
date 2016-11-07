DiedAt <- c(22,40,72,41)
WriteAt <- c(16,18,36,36)
FirstName <- c('John','Edgar','Walt','Jane')
SecondName <- c('Doe','Poe','Whitman','Austen')
Sex <- c('MALE','MALE','MALE','FEMALE')
DateOfDeath <- c('2015-05-10','1849-10-07','1892-03-26','1817-07-18')

#Creating data.frame
writers_df <- data.frame(DiedAt, WriteAt, FirstName, SecondName, Sex, DateOfDeath)
class(writers_df)
str(writers_df) #Gives details about observations and variables

#By default some of the things will be considered as factors by R
#To avoid that situation, use "I" and add that values to the data.frame
FirstName <- I(c('John','Edgar', 'Walt', 'Jane'))
writers_df <- data.frame(DiedAt, WriteAt, FirstName, SecondName, Sex, DateOfDeath)
str(writers_df)

#Adding new columns/observations
writers_df['Like'] <- c('Y','N','Y','N') #We can also use writers_df$Like
writers_df$Location <- c('Belgium',' UK','USA','UK')

#Getting a quick view of records
head(writers_df) #returns only few records from the data
tail(writers_df) #returns last few records from the data

#Get columns/observations name
names(writers_df)

#Changing names of columns
names(writers_df) <- c('DateDiedAt','WroteAtAge', 'FirstName','LastName','Gender','DateOfDeath','MyLiking','Location')
dim(writers_df) #Gives observations and variables count

#Accessing column/observation - use $
writers_df$FirstName
writers_df[1:2,3] #1 to 2 row and 3rd column

#Make the data default. Or set the current context to this data
attach(writers_df)
FirstName #Just access directly
LastName
WroteAtAge

#Extracting and assigning it to others
writers_names_df <- writers_df[1:4, 'FirstName'] #Get 1 to 4 rows of column FirstName
class(writers_names_df) #Since it is only one row it will not be treated as data.frame
writers_names_df <- writers_df[1:4, 'FirstName', drop=FALSE] #Get 1 to 4 rows of column FirstName
class(writers_names_df) #Since we included drop=FALSE, this will be treated as data.frame
str(writers_names_df) #We will have one column $FirstName

#Subset of data
subset(writers_df, FirstName == 'Jane')
subset(writers_df, DateDiedAt > 35 & DateDiedAt<75)

#Stack entire data into one colum
t1 <- stack(writers_df)
t1 #print t1
t1 <- unstack(t1) #Unstacks the same
t1 #print


