##가위바위보

my <- 1
res<- toString( my - sample(0:2,1,replace = TRUE))
x <- switch (res,
             '-1' = "패배",
             ' 2' = "패배",
             '0' = "비김",
             '-2' = "이김",
             '1' = "이김"
)

##가위바위보 객체
rps<-function(com,my){
  return(switch (toString( my - com),
                 '-1' = "패배",
                 ' 2' = "패배",
                 '0' = "비김",
                 '-2' = "이김",
                 '1' = "이김"
  ))
}
rps(1,sample(0:2,1,replace = TRUE))

##ㄱㅖ산기
num1<-10
num2<-5
op <- '+'
cal<-print(switch(op,
                   '+' = toString(num1+num2),
                   '-' = toString(num1-num2),
                   '*' = toString(num1*num2),
                   '/' = toString(num1/num2),
                   '%%' = toString(num%%num2)
))
## ㄱㅖ산기객체

calc<-function(num1,op,num2){
   return(print(switch(op,
                      '+' = toString(num1+num2),
                      '-' = toString(num1-num2),
                      '*' = toString(num1*num2),
                      '/' = toString(num1/num2),
                      '%%' = toString(num%%num2)
  )))
}
calc(10,'+',5)

##bmi
hei<-180
wei<-75
bmi<-wei/(hei*hei)
if(bmi<18.5)print("저체중") else
if (18.5<=bmi&& bmi<23)
  print("정상") else
if(23<=bmi&&bmi<25)
  print("비만전단계") else
if(25<=bmi&&bmi<30)
  print("1단계 비만") else
if(30<=bmi&&bmi<35)
  print("2단계 비만") else
  print("3단계 비만") 

## bmi 객체
bmi2<- function(hei,wei){
  bmi<-wei/(hei*hei)
  if(bmi<18.5)res<-"저체중" else
  if (18.5<=bmi&& bmi<23)
    res<-"정상" else
  if(23<=bmi&&bmi<25)
    res<-"비만전단계" else
  if(25<=bmi&&bmi<30)
    res<-"1단계 비만" else
  if(30<=bmi&&bmi<35)
    res<-"2단계 비만" else
      res<-"3단계 비만" 
  return( res )
}
bmi2(180,75)

##가위바위보
com <- sample(0:2,1,replace = TRUE)
my <- 1
res<- toString( my - com)
x <- switch (res,
             '-1' = "패배",
             ' 2' = "패배",
             '0' = "비김",
             '-2' = "이김",
             '1' = "이김"
)

