library(readxl)
Databalita<-read_excel("F:/Tugas Akhir/Iput/Data FIX/JumlahKematianBalita.Xlsx")
modelMKT<-lm(formula=Y~.,data=Databalita)
modelMKT
confint.lm(modelMKT,level=0.90)
library(robustbase)
summary(lmrob(Y~.,data=Databalita,method="MM",psi="tukey"))
rob<-lmrob(Y~.,data=Databalita,method="MM",psi="tukey")
rob
confint.default(rob,level=0.90)
Y<-Databalita[,1]
X1<-Databalita[,2]
X2<-Databalita[,3]
data2<-data.frame(Y,X1)
data2
rob2<-summary(lmrob(Y~.,data=data2,method="MM",psi="tukey"))
rob2

