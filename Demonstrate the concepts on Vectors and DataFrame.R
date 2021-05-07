#Name: Harini G
#Roll No: 2048034
#1.Create a vector different data types(Logical, Numeric, Integer, Complex,Character) and display their class and typeof  each datatype.
v1=c(TRUE,FALSE,TRUE)
class(v1)
typeof(v1)
v2=c(2.89,8.6,9.7)
class(v2)
typeof(v2)
v3=c(88L,91L,108L)
class(v3)
typeof(v3)
v4=c(2+3i,5+68i)
class(v4)
typeof(v4)
v5=c("Hello","Hi","Welcome")
class(v5)
typeof(v5)
#2. Get and print the current working directory
getwd()

setwd("D:/Harini(christ unniversity)/2nd sem subjects/R")
getwd()
#5.Read the csv file in your current working directory
readfile=read.csv("D:/Harini(christ unniversity)/2nd sem subjects/R/student.csv")
readfile
#6.Check whether your  CSV file is a dataframe and also check the number of rows and columns
class(readfile)
nrow(readfile)
ncol(readfile)
#7. Apply all the functions sum(),mean(),sqrt()  related to dataframe
sum(readfile$Total.marks)
mean(readfile$Total.marks)
sqrt(readfile$Total.marks)
#8.Get the highest marks from the data frame
highest_marks=max(readfile$Total.marks)
highest_marks
#9. Get the details of the person with highest marks
student_detail=subset(readfile,Total.marks==highest_marks)
student_detail
#10. Get all the students in UG degree whose marks is greater than 300
student_detail1=subset(readfile,Total.marks>300 & Degree=="UG")
student_detail1
#11. Add one more vector  Date_ of_ Joining(DOJ)  to the already existing dataframe 
year=c(2018,2017,2016,2019,2018,2017,2020,2019)
readfile$Date_of_Joining=year
readfile
#12. Get the details of the students who have joined after 2017
students_joined_after_2017=subset(readfile,Date_of_Joining>2017)
students_joined_after_2017
#13. Write the filtered data into a new file
write.csv(students_joined_after_2017,"output.csv")
newdata=read.csv("output.csv")
newdata

