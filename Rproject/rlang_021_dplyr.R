## dplyr
# filter() 행추출
# select() 열추출
# arrange() 정렬
# mutate() 변수추가
# summarise() 통계치산출
# group_by() 집단별로 나누기
# left_join() 데이터합치기(열)
# bind_rows() 데이터합치기(행)
# View() 뷰어창에서 데이터 확인!! 주의 V가 대문자
install.packages("dplyr")
library(dplyr)
library(ggplot2)
path <- getwd() #working directory
path
setwd("csv_exam")
df_exam <- read.csv("csv_exam.csv")
df_exam
#문자가 들어있는 파일을 불러올때는 파일명 뒤에stringAsFactors = F
#를 넣어 줄것. 지정하지 않으면 문자요소는 factor 로 
#전환됨. 숫자는 전환 되지 않음

View(df_exam)
df_exam<-rename(df_exam,userid=id)
##is.data.frame(df_exam) TRUE 면 이미 데이터프레임 상태이고
##FALSE면 넣어줘야 한다. 

head(df_exam)
tail(df_exam)
dim(df_exam)
str(df_exam) 
summary(df_exam)
#영어, 수학, 과학의 평균
df_exam$avg<-(df_exam$math+df_exam$english+df_exam$science)/3
#평균의 등급
df_exam$grade<-ifelse(
  df_exam$avg>=90,"A",
    ifelse(
      df_exam$avg>=80,"B",
      ifelse(
        df_exam$avg>=70,"C",
        ifelse(
          df_exam$avg>=60,"D",
          ifelse(
            df_exam$avg>=50,"E","F"
           
          )
        )
        
      )
    )
)
df_exam$grade