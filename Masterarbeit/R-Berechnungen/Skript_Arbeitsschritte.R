# datensatz einlesen: 
> pfad="/home/iryna/Arbeitsfläche/Masterarbeit/R-Berechnungen"
> setwd(pfad)
> mydata=read.csv("Elternbefragung.csv")
Es muss immer eine Variable definiert werden, in die der Datensatz gespeichert wird, hier z.B. 
mydata.

#um mit einzelnen Variablen arbeiten zu können, wird folgende Funktion benutzt: 
> attach()

# Objekt löschen:
> remove(Variablenname)

#neue Datenmatrix ohne NAs
>newdata<-na.omit(mydata)

#Faktoren in verktoren konventieren:
zuerst prüfen was für eine Variable das ist: numeric oder factor.
> class(Variablenname)
> mydata$Austausch.vektor<-as.numeric(mydata$Austausch)


# Z-Standardisierung: 
> z <- scale(varimaxvalues, center=TRUE, scale=TRUE)
ODER scale(), z.B. round(scale(mydata),2)

und Zentrierung:
> mydata$Alter.cen<-scale(mydata$Alter,scale=FALSE)


#Deskriptive Statistik ausgeben: 
> describe(mydata)

#Berechnung der Korrelation: für rcorr Funktion muss das Hmisc Paket installiert werden
> cor.matrix<-cbind(gespr8.1,anspr8.2,ofohr8.3,austs8.4,infrm8.5,etwgs8.6,ptner8.7,ausef8.8,auflt8.9,mitw8.10,eamt8.11,hosp8.12,pdar8.13,eins8.14,besw8.15,ents8.16,eazf8.17,ifpd8.18,betl8.19)
> rcorr(cor.matrix)

#cor-Funktion: muss kein extra Paket geladen werden!gibt aber keine sig. aus.
use="complete"-> damit fehlende Werte in die Berechnung nicht einfließen.

#cor.test->Funktion: gibt meh als die anderen Funktionen Infos raus, ABER
kann nur für 2 Variablen angewandt werden.

#Box-Plot für die Überprüfung der Ausreißer:
> boxplot(data.frame(gespr8.1,anspr8.2,ofohr8.3,austs8.4,
                     infrm8.5,etwgs8.6,ptner8.7,ausef8.8,auflt8.9,mitw8.10,eamt8.11,
                     hosp8.12,pdar8.13,eins8.14,besw8.15,ents8.16,eazf8.17,ifpd8.18,betl8.19)) ODER 
> boxplot(mydata)

#Gibt Histogramme für alle 19 Variablen aus: 
> for (i in 1:19) hist(mydata[i])
  
# Um die Normalverteilungskurve zu zeichnen:
> mittelwert<-mean(gespr8.1, na.rm=TRUE)
> sd<-sd(gespr8.1, na.rm=TRUE)
> curve(dnorm(x,mittelwert,sd)*length(gespr8.1), add=TRUE)

# um neben den Streudiagrammen auch alle 
univariaten Histogramme mit Dichtesch ̈tzung
sowie die (Pearson-)Interkorrelationen der Variablen 
darzustellen:
> pairs.panels(mydata [ , 1:5], pch=".")
> pairs.panels(mydata [ , 6:10], pch=".")
> pairs.panels(mydata [ , 11:15], pch=".")
> pairs.panels(mydata [ , 16:19], pch=".")

# Bartlett-Test:
> bartlett.test(mydata)

# KMO-Test:
> install.packages("rela")
> library("rela")
> paf.obj<-paf(as.matrix(mydata))
> cat("KMO Statistik:", paf.obj$KMO, "\n")

# Scree-Plot: 
> VSS.scree(mydata) ODER für Parallelanalyse
> fa.parallel(mydata)

# FAKTORENANALYSE:

# Extraktion von Faktoren (PCA):
> principal(mydata)--> wird nur ein Faktor extrahiert ODER 
> principal(mydata, nfactors=3)
ODER
# Unrotiert:
> fit <- principal(mydata, nfactors=3, rotate="none")
> fit 

 # Rotation:
> fa.pc<-principal(mydata, 3, fm="pc", rotate="promax")
> print(fa.pc, digits=3, cutoff=.3, sort=TRUE)
ODER
> fit <- principal(mydata, nfactors=3, rotate="promax")
> fit

#um die Ladungen <.30 zu unterdrücken:
> print(fa.pc$loadings, digits=2, cutoff=.3): 


#Reabilität: zuerst muss das Paket CTT geladen werden!
> reliability(mydata)

#Faktorwerte berechnen:
> fit$scores

# install.packages("FactoMineR"): PCA Variable Factor Map
>library(FactorMineR)
result<-PCA(mydata)

#Faktorwerte in newdata Variable abspeichern:
>newdata<-(fit$scores)
>newdata

#Korrelation zwischen gsmt8.20 und den Faktorwerten:
> cor.matrix<-cbind(gsmt8.20,newdata)
> rcorr(cor.matrix)



