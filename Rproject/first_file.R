help("solve")
?solve
# java : int a =3
a<-3
a
b<-4
b
c<-a+b
c
a<-c(1,2,3,4)
a
a<-c(1,"2",3,"4")
a
# int[] arr = new int[3];
#arr[0] = 1;
#arr[1] = 2;
#arr[2] = 3;
#arr <- c(1,2,3)
x<-c(1,2,3,4,5,6,7,8,9,10)
x
sum(x)
sum((x-mean(x))^2)/(length(x)-1)
?seq
x<-seq(length=100,from=1,by=1)
x
?sample

sample(1:3,1,replace = TRUE)
#sample(시작수:끝수,뽑을 개수 , replace = TRUE)
#가위 : 0, 바위 : 1, 보 : 2
com<-sample(0:2,1,replace = TRUE) 
my<- 1
if(my-com == 0 )print("비김") else
  if(my-com == -1 || my-com == 2 )print("패배")else
    print("이김")


# switch기본형
com <- sample(0:2,1,replace = TRUE)
my <- 1
cat('컴퓨터 : ',com)
res<- toString( my - com)
cat('결과 : ',res)
x <- switch (res,
             '-1' = "패배",
             ' 2' = "패배",
             '0' = "비김",
             '-2' = "이김",
             '1' = "이김"
)
print(x)
# switch 스칼라방식
my<-1
print(switch (toString(my-sample(0:2,1,replace = TRUE)),
              '-1' = "패배",
              ' 2' = "패배",
              '0' = "비김",
              '-2' = "이김",
              '1' = "이김"
))

hei<-180/100
wei<-75
bmi<-wei/(hei*hei)
if(bmi<18.5)print("저체중") else
  if (18.5<=bmi&& bmi<23)print("정상") else
    if(23<=bmi&&bmi<25)print("비만전단계") else
      if(25<=bmi&&bmi<30)print("1단계 비만") else
        if(30<=bmi&&bmi<35)print("2단계 비만") else print("3단계 비만") 
        
#VECTOR 만드는 방식

print(c(1:10))
print(seq(from=1,to=10,by=2))
print(seq(from=1,length=10,by=2)) 
print(seq(1,10,2))
print(rep(1:5))
print(rep(1:5,each=2))
print(rep(1:5,times=2))
print(rep(1:5,each=2,times=3))
print(rep(1:5,times=3,each=2))
print(rep(1:5,times=3,each=2,len=5))
print(rep(1:5,each=2,times=3,len=5))

#기본타입 : character, wide character, integer,
#floating point, double floating point, Boolean etc
# R-objects : vector, List, Matric,Array,Factor, Data Frame
# vector의 6개 타입
#Logical(T,F), Numeric(실수), Integer(정수)
#Complex(허수),Character(문자열),Raw(주소값)

num1<-10
num2<-5
op <- '+'
calc<-print(switch(op,
                  '+' = toString(num1+num2),
                  '-' = toString(num1-num2),
                  '*' = toString(num1*num2),
                  '/' = toString(num1/num2),
                  '%%' = toString(num%%num2)
                   ))
#1+2+3+4+5=15
for(i in 1:5){
  if(i==5)
    cat(i,'=',sum(1:5))
  else cat(i,'+')
}
#1 - 2 + 3 - 4 + 5 - 6 + 7 - 8 + 9 - 10 + 11 - 12 + 13 - 14 + 15 - 16 + 17
#- 18 + 19 - 20 + 21 - 22 + 23 - 24 + 25 - 26 + 27 - 28 + 29 - 30 + 31 - 32 + 33 
#- 34 + 35 - 36 + 37 - 38 + 39 - 40 + 41 - 42 + 43 - 44 + 45 - 46 + 47 - 48 + 49 
#- 50 + 51 - 52 + 53 - 54 + 55 - 56 + 57 - 58 + 59 - 60 + 61 - 62 + 63 - 64 + 65 - 66
#+ 67 - 68 + 69 - 70 + 71 - 72 + 73 - 74 + 75 - 76 + 77 - 78 + 79 - 80 + 81 - 82 + 83
#- 84 + 85 - 86 + 87 - 88 + 89 - 90 + 91 - 92 + 93 - 94 + 95 - 96 + 97 - 98 + 99 
#- 100 =  -50
for(i in 1:100){
  if(i==100)
    cat(i,'= ',sum(seq(1,99,2))-sum(seq(2,100,2)))else
  if(i%%2==0)
    cat(i,'+ ')else
      if(i%%2==1)
        cat(i,'- ')
}

for(i in 1:100){
  if(i==100)
    cat(i,'= ',sum(seq(1,99,2))-sum(seq(2,100,2)))else
  switch(
    toString(i%%2),
    '0'=cat(i,'+ '),
    '1'=cat(i,'- ')
  )
}


