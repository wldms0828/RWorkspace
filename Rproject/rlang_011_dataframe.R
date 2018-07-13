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
print(grade_data)
##이름과 총계만 뽑기
print(data.frame(grade_data$emp_name,grade_data$emp_sum))
##class로 타입을 뽑아내
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
class(kim$name)
class(kim$sum)
class(kim$mean)
class(kim$grade)
cat("*******************************************")
cat('|', res[1],'|',res[2],'|', res[3] ,'|', res[4] ,'|')
cat("*******************************************")

##data frame 생성하기 
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
		
print(emp.data) 