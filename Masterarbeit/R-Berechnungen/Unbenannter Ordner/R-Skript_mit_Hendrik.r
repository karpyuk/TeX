#Arbeitsverzeichnis festlegen
setwd("E:\\R-Berechnungen")
library(car)
#Daten einlesen (wei? nicht als NA)
Elternbefragung<-read.csv2("Elternbefragung_kodiert_NA.csv")
Elternbefragung_mit98<-read.csv2("Elternbefragung_kodiert.csv")

#for (i in 1:ncol(Elternbefragung)){
#Elternbefragung[,i]<-as.numeric(Elternbefragung[,i])
#}
attach(Elternbefragung)


#Mittelwertstabelle erstellen
Mittelwerte<-matrix(data=NA,ncol(Elternbefragung),2)
colnames(Mittelwerte)<-c("M","SD")

Mittelwerte<-data.frame(Mittelwerte)
rownames(Mittelwerte)<-colnames(Elternbefragung)

#Mittelwerte in Tabelle einf?gen
for (variable in 1:ncol(Elternbefragung)){
Mittelwerte[variable,1]<-round(mean(Elternbefragung[,variable],na.rm=T),2)
Mittelwerte[variable,2]<-round(sd(Elternbefragung[,variable],na.rm=T),2)
}

#Mittelwertstabelle abspeichern
write.csv2(Mittelwerte,"Mittelwerte.csv")
