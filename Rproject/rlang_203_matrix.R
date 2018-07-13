M <- matrix(c(1:25), nrow = 5, byrow = TRUE)
print(M)
N <- matrix(c(1:25), nrow = 4, byrow = FALSE)
print(N)
##append vector에 누적해서 출력
x<-c(1,2)
cat(x)
x<-append(x,3)
cat(x)

n<-1
for(i in 1:8){
  n<-n*2
}
n

x=c()
x[1] = 1
cat(x)
for (i in 2:5){
  x[i]=i
}
cat(x)

x=c(1,2,3,4,5)
y=c(10,9,8,7,6)

##삼각형
mtx<-matrix(rbind(c(1,0,0,0,0),c(2,3,0,0,0),c(4,5,6,0,0),c(7,8,9,10,0),c(11,12,13,14,15)),5,byrow = FALSE)
mtx
##지그재그
mtx<-matrix(rbind(c(1:5),c(10:6),c(11:15),c(20:16),c(21:25)),5,byrow = FALSE)
mtx
##다이아몬드
mtx<-matrix(rbind(c(0,0,1,0,0),c(0,2,3,4,0),c(5,6,7,8,9),c(0,10,11,12,0),c(0,0,13,0,0)),5,byrow = FALSE)
mtx
res<-toString(r)
x<-switch (res,
  '1'<-rbind(c(1,0,0,0,0),c(2,3,0,0,0),c(4,5,6,0,0),c(7,8,9,10,0),c(11,12,13,14,15)),
  '2'<-rbind(c(1:5),c(10:6),c(11:15),c(20:16),c(21:25)),
  '3'<-rbind(c(0,0,1,0,0),c(0,2,3,4,0),c(5,6,7,8,9),c(0,10,11,12,0),c(0,0,13,0,0))
)

## matrix 객체
mtxselect<-function(r){
  return(switch (r,
                 '1'<-rbind(c(1,0,0,0,0),c(2,3,0,0,0),c(4,5,6,0,0),c(7,8,9,10,0),c(11,12,13,14,15)),
                 '2'<-rbind(c(1:5),c(10:6),c(11:15),c(20:16),c(21:25)),
                 '3'<-rbind(c(0,0,1,0,0),c(0,2,3,4,0),c(5,6,7,8,9),c(0,10,11,12,0),c(0,0,13,0,0))
                   ))
}
mtxselect(2)

