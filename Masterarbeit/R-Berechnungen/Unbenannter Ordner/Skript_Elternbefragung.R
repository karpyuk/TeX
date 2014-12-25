> elternbefragung <- read.csv("C:/Users/mäuschen/Desktop/Masterarbeit/Elternbefragung.csv.csv",header=T,sep="\t",na.strings="NA",dec=".",strip.white=T) 
> View(elternbefragung)

1.Pakete laden+ Funktion < library(name des Paketes)
2.Daten einlesen aus Execel über Rcommander Funktion: Datenmanagement

3.attach(Elternbefragung)

> levels(eigwn6.1)- Fuktion zeigt, die Ausprägungen der Variablen.Z.B. levels=c(1,2). In meinem Fall levels sind-->
[1] "stimmt eher" "stimmt eher nicht" "stimmt gar nicht"  "stimmt völlig"    
[5] "weiß nicht"  
> Labels-Funktion zeigt welche Werteetiketten den einzelnen Labels zugeordnet sind. Z.B.: labels=c("weiblich","männlich") 

> Werteetiketten vergeben: hier ist wichtig bei der Labelsvergabe die Reihenfolge der levels zu beachten. die sollen auch in der selben Reihenfole
stehen!!!

> Elternbefragung$eigwn6.1 <-ordered(Elternbefragung$eigwn6.1,levels=c("stimmt eher","stimmt eher nicht","stimmt gar nicht","stimmt völlig","weiß nicht"),
+ labels=c(3,2,1,4,5))
> labels(eigwn6.1)

Faktoren in Vektoren konvertieren:
> mit class-Befehl findet man heraus, dass es sich dabei um einen Faktor handelt.


> eigwn6.1.vektor <-as.numeric(eigwn6.1)
> class(eigwn6.1.vektor)
[1] "numeric"
> eigwn6.1.vektor

Mittelwerteberechnung:
Auswahl mehrerer Variablen gleichzeitig mit der Funktion: data.frame

> abläufe<-data.frame(eigwn6.1.vektor,bring6.2.vektor,abhol6.3.vektor,rhslf6.4.vektor)
> mean(abläufe, na.rm=TRUE)

> umgang<-data.frame(umgng7.1.vektor,begrs7.2.vektor,eltrn7.3.vektor,mtein7.4.vektor,siort7.5.vektor,ermt7.6.vektor)

> elternzusammenarbeit<-data.frame(gespr8.1.vektor,anspr8.2.vektor,ofohr8.3.vektor,austs8.4.vektor,infrm8.5.vektor,etwgs8.6.vektor,ptner8.7.vektor,ausef8.8.vektor,auflt8.9.vektor,mitw8.10.vektor,eamt8.11.vektor,hosp8.12.vektor,pdar8.13.vektor,eins8.14.vektor,besw8.15.vektor,ents8.16.vektor,eazf8.17.vektor,ifpd8.18.vektor,betl8.19.vektor,gsmt8.20.vektor)

> elterninformation<-data.frame(ifokd9.1.vektor,ifopk9.2.vektor,ifomg9.3.vektor,ifotg9.4.vektor,ifoes9.5.vektor,ifobe9.6.vektor,ifoei9.7.vektor,ifotr9.8.vektor)

Data.frame für alle variablen:
> all.variabl<-data.frame(eigwn6.1.vektor,bring6.2.vektor,abhol6.3.vektor,rhslf6.4.vektor,
+ umgng7.1.vektor,begrs7.2.vektor,eltrn7.3.vektor,mtein7.4.vektor,siort7.5.vektor,ermt7.6.vektor,
+ gespr8.1.vektor,anspr8.2.vektor,ofohr8.3.vektor,austs8.4.vektor,infrm8.5.vektor,etwgs8.6.vektor,ptner8.7.vektor,ausef8.8.vektor,auflt8.9.vektor,mitw8.10.vektor,eamt8.11.vektor,hosp8.12.vektor,pdar8.13.vektor,eins8.14.vektor,besw8.15.vektor,ents8.16.vektor,eazf8.17.vektor,ifpd8.18.vektor,betl8.19.vektor,gsmt8.20.vektor,
+ ifokd9.1.vektor,ifopk9.2.vektor,ifomg9.3.vektor,ifotg9.4.vektor,ifoes9.5.vektor,ifobe9.6.vektor,ifoei9.7.vektor,ifotr9.8.vektor)
> mean(all.variabl,na.rm=T)


Häufigkeiten berechnen:
> round(100*prop.table(table(eigwn6.1.vektor)),2)
eigwn6.1.vektor
    1     2     3     4     5 
24.96  7.23  3.59 63.63  0.59---> die Reihenfolge beachten! 1 ist 3, 2 ist 2, 3 ist 1, 4 ist 4, 5 ist 5.

> R Commander berechent gleich in richtiger Reihenfolge!


Standardabweichung und Varianz:

> round (sd(eigwn6.1.vektor, na.rm=T), 2)
[1] 1.31

> var (eigwn6.1.vektor, na.rm=T)
[1] 1.725281

Korrelationsmatrix für drei oder mehr Variablen

> cor.matrix<-cbind(eigwn6.1.vektor,bring6.2.vektor,abhol6.3.vektor,rhslf6.4.vektor,
+ umgng7.1.vektor,begrs7.2.vektor,eltrn7.3.vektor,mtein7.4.vektor,siort7.5.vektor,ermt7.6.vektor,
+ gespr8.1.vektor,anspr8.2.vektor,ofohr8.3.vektor,austs8.4.vektor,infrm8.5.vektor,etwgs8.6.vektor,ptner8.7.vektor,ausef8.8.vektor,auflt8.9.vektor,mitw8.10.vektor,eamt8.11.vektor,hosp8.12.vektor,pdar8.13.vektor,eins8.14.vektor,besw8.15.vektor,ents8.16.vektor,eazf8.17.vektor,ifpd8.18.vektor,betl8.19.vektor,gsmt8.20.vektor,
+ ifokd9.1.vektor,ifopk9.2.vektor,ifomg9.3.vektor,ifotg9.4.vektor,ifoes9.5.vektor,ifobe9.6.vektor,ifoei9.7.vektor,ifotr9.8.vektor)
> rcorr(cor.matrix)


 			