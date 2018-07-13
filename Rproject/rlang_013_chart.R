## SQL30 2012년 팀의 우승 수 그래프(bar)
df_win_count<-dbGetQuery(conn, 
  "SELECT 
      A.WINNER,
      COUNT(A.WINNER) win_count
  FROM(SELECT
          K.SCHE_DATE 경기날짜,
          CASE
              WHEN K.HOME_SCORE > K.AWAY_SCORE THEN HT.TEAM_NAME
              WHEN K.AWAY_SCORE > K.HOME_SCORE THEN AT.TEAM_NAME
              ELSE '무승부'
          END WINNER
       FROM SCHEDULE K
              JOIN TEAM HT
                  ON K.HOMETEAM_ID LIKE HT.TEAM_ID
              JOIN TEAM AT
                  ON K.AWAYTEAM_ID LIKE AT.TEAM_ID
       WHERE
          K.GUBUN LIKE 'Y'
          AND K.SCHE_DATE LIKE '2012%'
      )A
  WHERE A.WINNER NOT LIKE '무승부'
  GROUP BY A.WINNER
  ORDER BY win_count DESC
  ")
df_win_count

barplot(df_win_count[,2], names.arg=df_win_count[,1], main = '2012년 팀의 우승 수')

##SQL29 좌석수 대로 스타디움 순서(pie)
df_seat_count<-dbGetQuery(conn, "select 
                          s.stadium_name NAME,
                          s.seat_count SEATCOUNT
                          from stadium s
                          order by s.seat_count desc")
df_seat_count

pie(df_seat_count$SEATCOUNT,df_seat_count$NAME,cex=0.7)

#소진, 세인
pie(df_seat_count$NSEAT,df_seat_count$STADIUM)
pie(df_seat_count[,3], paste(substr(df_seat_count[,2],1,2),df_seat_count[,3]))

#SQL28 경기의 점수 차(histogram)
df_score_gap<-dbGetQuery(conn, 
              "SELECT
        K.SCHE_DATE match_date,
              HT.TEAM_NAME || ' VS ' || AT.TEAM_NAME match,
              CASE
              WHEN K.HOME_SCORE >= 
              K.AWAY_SCORE THEN (K.HOME_SCORE - K.AWAY_SCORE)
              ELSE K.AWAY_SCORE - K.HOME_SCORE
              END score_gap
              FROM
              SCHEDULE K
              JOIN TEAM HT
              ON K.HOMETEAM_ID LIKE HT.TEAM_ID
              JOIN TEAM AT
              ON K.AWAYTEAM_ID LIKE AT.TEAM_ID
              WHERE
              K.SCHE_DATE LIKE '2012%'
              AND K.GUBUN LIKE 'Y'
              
              ORDER BY Score_gap DESC")
df_score_gap

hist(df_score_gap[,3],df_score_gap[,2],df_score_gap[,1])

##SQL20 월별 경기수 산포도

df_month_count <- dbGetQuery(conn,"SELECT
                          (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201201%') oneM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201202%') twoM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201203%') threeM,
                             (SELECT COUNT(*)  
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201204%') fourM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201205%') fiveM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201206%') sixM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201207%') sevenM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201208%') eightM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201209%') nineM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201210%') tenM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201211%') eleM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201212%') twelM
                             FROM DUAL")
df_month_count[,7]
#inputY <- c(df_month_count[,4],df_month_count[,5],df_month_count[,6],df_month_count[,7],df_month_count[,8],df_month_count[,9],df_month_count[,10],df_month_count[,11],df_month_count[,12])
inputY <- df_month_count[,]
inputX <- c(1:12)

plot(x =  c(1:12),y = df_month_count[,],
     xlab = "월",
     ylab = "경기수",
     #xlim = c(4,12),
     #ylim = c(1,50),
     #type = 'o',
     main = "월별경기수", axes=FALSE
)
axis(1, at=1:12) #x축
axis(2,at=2*0:50)


##SQL26 라인차트 팀별골키퍼의 평균키

gk_height<-dbGetQuery(conn, 
       "    select   
         (select team_name 
       from team a
       where a.team_id like t.team_id) tname,
       round(avg(p.height),2) ht
       
       from team t
       join player p
       on t.team_id like p.team_id
       where p.position like 'GK'
       
       group by t.team_id")
gk_height

plot(gk_height[,2],type = "o")
axis(1,at=1:11,lab=gk_height[,1])

