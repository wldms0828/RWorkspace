##piechart
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")
pie(x,labels)
##barchart
barplot(c(7,12,28,3,41))
##히스토그램
hist(c(9,13,21,8,36,22,12,41,31,33,19),xlab = "Weight",col = "yellow",border = "blue")
## 라인차트
plot(c(7,12,28,3,41),type = "o")
##산포도
input <- mtcars[,c('wt','mpg')]
print(input)
plot(x = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),		 
     main = "Weight vs Milage"
)
##주식차트
input <- mtcars[,c('mpg','cyl')]
print(head(input))
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")


## 소진
pie.sales <- df_stu$mean
names(pie.sales) <- df_stu$name
pie(pie.sales)
pie(pie.sales, col=c("purple", "violetred1", "green3","cornsilk", "cyan"))

# 단아
pie(df_stu$sum,df_stu$name)

## 누리
x <- df_stu$mean
labels <- df_stu$name
pie(x,labels)

grade<-function(name,kor,eng,math){
  
  x<-c(kor, eng, math)
  
  return(list(name=name,
              sum=sum(x), 
              mean=mean(x), 
              grade=switch(
                toString(mean(x)%/%10),
                '10'='A',
                '9'='A',
                '8'='B',
                '7'='C',
                '6'='D',
                '5'='E',
                '4'='F',
                '3'='F',
                '2'='F',
                '1'='F'
              )
  ))
}
kim <- grade('김영권',70,80,60)
park <- grade('박지성',80,60,50)
son <- grade('손흥민',90,80,70)
ki <- grade('기성용',80,90,50)
oh <- grade('오반석',80,70,50)
grade_data<-data.frame(
  
  emp_name = c(kim$name,park$name,son$name,ki$name,oh$name),
  emp_sum = c(kim$sum,park$sum,son$sum,ki$sum,oh$sum),
  emp_mean = c(kim$mean,park$mean,son$mean,ki$mean,oh$mean),
  emp_grade = c(kim$grade,park$grade,son$grade,ki$grade,oh$grade),
  
  stringsAsFactors = FALSE
)
##파이차
x <- grade_data$emp_mean
labels <- grade_data$emp_name
pie(x,labels)
##barchart
barplot(grade_data$emp_mean, names.arg=grade_data$emp_name)
##히스토그램
hist(c(9,13,21,8,36,22,12,41,31,33,19),xlab = "Weight",col = "yellow",border = "blue")
## 라인차트
plot(c(7,12,28,3,41),type = "o")
##산포도
input <- mtcars[,c('wt','mpg')]
print(input)
plot(x = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),		 
     main = "Weight vs Milage"
)
##주식차트
input <- mtcars[,c('mpg','cyl')]
print(head(input))
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")