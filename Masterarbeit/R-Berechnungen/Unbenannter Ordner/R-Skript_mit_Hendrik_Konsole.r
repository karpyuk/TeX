
> setwd("E:\\R-Berechnungen")
> Elternbefragung<-read.csv2("Elternbefragung_kodiert.csv")
> head(Elternbefragung)
  eigwn6.1 bring6.2 abhol6.3 rhslf6.4 umgng7.1 begrs7.2 eltrn7.3 mtein7.4 siort7.5 ermt7.6 gespr8.1 anspr8.2
1        4        4        4        4        4        4        3        4        4       3        3        3
2        3        1        2        3        4        1        3        3        3       3        1        2
3        2        4        4       98        3        4        4        3       98      98        4        3
4        3        3        2        3        3        2        3        1       98       1        2        1
5        3        3        3        3        3        3        3        3        3       3        3        3
6        4        3        3        3        4        4        4       98        3       3        3        3
  ofohr8.3 austs8.4 infrm8.5 etwgs8.6 ptner8.7 ausef8.8 auflt8.9 mitw8.10 eamt8.11 hosp8.12 pdar8.13 eins8.14
1        4        3        4        4        3        3        4        4        4        4        4        4
2        4        3        1        3        1        1        3        3        4        4        3        2
3        3        4        3       98        3       98        3        3        4        4       98       98
4        1        2        1        2        1        1        1        1       98       98        2        2
5        3        3        3        3        3        3        3        3        3        3        3        2
6        3        3        3        3        2        2        2        2       98        3        3       98
  besw8.15 ents8.16 eazf8.17 ifpd8.18 betl8.19 gsmt8.20 ifokd9.1 ifopk9.2 ifomg9.3 ifotg9.4 ifoes9.5 ifobe9.6
1        3        3        4        4        4        4        4        4        3        4        4        4
2        2        2        3        3        3        3        2        3        3        3        4        3
3        2       98        2        3        3        3        3        2        3        3        2       98
4        2        3        1        1        1        1        2        3        2        2        4        3
5        3       98        2        3        3        2        3        3        2        3        3        2
6        3       98        3        3        3        3        3       98       98        3        2        2
  ifoei9.7 ifotr9.8 Kitadauer Alter              Region
1        4        3         3     4 FRÖBEL Berlin gGmbH
2        4        4         4     5 FRÖBEL Berlin gGmbH
3        3        2         1     4 FRÖBEL Berlin gGmbH
4        3        3         4     5 FRÖBEL Berlin gGmbH
5        3        3         2     3 FRÖBEL Berlin gGmbH
6        3        3         2     3 FRÖBEL Berlin gGmbH
> Mittelwerte<-matrix(data=NA,ncol(Elternbefragung),2)
> colnames(Mittelwerte)<-c("M","SD")
> Mittelwerte<-data.frame(Mittelwerte)
> rownames(Mittelwerte)<-colnames(Elternbefragung)
> Mittelwerte
           M SD
eigwn6.1  NA NA
bring6.2  NA NA
abhol6.3  NA NA
rhslf6.4  NA NA
umgng7.1  NA NA
begrs7.2  NA NA
eltrn7.3  NA NA
mtein7.4  NA NA
siort7.5  NA NA
ermt7.6   NA NA
gespr8.1  NA NA
anspr8.2  NA NA
ofohr8.3  NA NA
austs8.4  NA NA
infrm8.5  NA NA
etwgs8.6  NA NA
ptner8.7  NA NA
ausef8.8  NA NA
auflt8.9  NA NA
mitw8.10  NA NA
eamt8.11  NA NA
hosp8.12  NA NA
pdar8.13  NA NA
eins8.14  NA NA
besw8.15  NA NA
ents8.16  NA NA
eazf8.17  NA NA
ifpd8.18  NA NA
betl8.19  NA NA
gsmt8.20  NA NA
ifokd9.1  NA NA
ifopk9.2  NA NA
ifomg9.3  NA NA
ifotg9.4  NA NA
ifoes9.5  NA NA
ifobe9.6  NA NA
ifoei9.7  NA NA
ifotr9.8  NA NA
Kitadauer NA NA
Alter     NA NA
Region    NA NA
> for (variable in 1:ncol(Elternbefragung)){
+ Mittelwerte[variable,1]<-round(mean(Elternbefragung[,variable],na.rm=T),2)
+ Mittelwerte[variable,2]<-round(sd(Elternbefragung[,variable],na.rm=T),2)
+ }
Warnmeldung:
In mean.default(Elternbefragung[, variable], na.rm = T) :
  Argument ist weder numerisch noch boolesch: gebe NA zurück
> class(Elternbefragung)
[1] "data.frame"
> Mittelwerte
              M    SD
eigwn6.1   4.05  7.26
bring6.2   3.50  3.32
abhol6.3   3.59  4.64
rhslf6.4  11.67 26.85
umgng7.1   4.61  9.46
begrs7.2   3.99  6.74
eltrn7.3   3.72  2.69
mtein7.4  13.63 29.14
siort7.5   8.12 20.34
ermt7.6   20.45 36.22
gespr8.1   3.45  5.01
anspr8.2   3.72  5.64
ofohr8.3   9.20 22.61
austs8.4   4.02  7.24
infrm8.5   3.35  5.99
etwgs8.6  15.31 31.56
ptner8.7   7.38 20.59
ausef8.8  13.60 30.30
auflt8.9   4.18  9.54
mitw8.10   9.96 24.45
eamt8.11  18.56 34.83
hosp8.12  27.15 41.30
pdar8.13   7.09 19.14
eins8.14  22.51 38.61
besw8.15  16.39 32.74
ents8.16  14.60 30.98
eazf8.17  13.26 29.24
ifpd8.18  13.51 29.60
betl8.19  14.63 30.68
gsmt8.20   5.35 13.88
ifokd9.1   3.59  6.78
ifopk9.2   4.60 11.96
ifomg9.3   6.41 17.62
ifotg9.4   3.79  7.50
ifoes9.5   4.79 10.99
ifobe9.6  10.24 25.78
ifoei9.7   4.39 10.40
ifotr9.8   6.45 18.21
Kitadauer  2.28  1.08
Alter      3.97  1.16
Region       NA  2.22
> utils:::menuInstallPkgs()
--- Bitte einen CRAN Spiegel für diese Sitzung auswählen ---
versuche URL 'http://mirrors.softliste.de/cran/bin/windows/contrib/3.0/car_2.0-19.zip'
Content type 'application/zip' length 1325096 bytes (1.3 Mb)
URL geöffnet
downloaded 1.3 Mb

Paket ‘car’ erfolgreich ausgepackt und MD5 Summen abgeglichen

Die heruntergeladenen Binärpakete sind in 
        C:\Users\lohse\AppData\Local\Temp\RtmpeYMvHM\downloaded_packages
> library(car)
Warnmeldung:
Paket ‘car’ wurde unter R Version 3.0.2 erstellt 
> Elternbefragung<-read.csv2("Elternbefragung_kodiert_NA.csv")
> #Mittelwertstabelle erstellen
> Mittelwerte<-matrix(data=NA,ncol(Elternbefragung),2)
> colnames(Mittelwerte)<-c("M","SD")
> 
> Mittelwerte<-data.frame(Mittelwerte)
> rownames(Mittelwerte)<-colnames(Elternbefragung)
> 
> for (variable in 1:ncol(Elternbefragung)){
+ Mittelwerte[variable,1]<-round(mean(Elternbefragung[,variable],na.rm=T),2)
+ Mittelwerte[variable,2]<-round(sd(Elternbefragung[,variable],na.rm=T),2)
+ }
Warnmeldung:
In mean.default(Elternbefragung[, variable], na.rm = T) :
  Argument ist weder numerisch noch boolesch: gebe NA zurück
> Mittelwerte
             M   SD
eigwn6.1  3.50 0.78
bring6.2  3.39 0.76
abhol6.3  3.37 0.75
rhslf6.4  3.33 0.79
umgng7.1  3.65 0.52
begrs7.2  3.51 0.74
eltrn7.3  3.64 0.56
mtein7.4  3.57 0.62
siort7.5  3.53 0.64
ermt7.6   3.55 0.64
gespr8.1  3.19 0.82
anspr8.2  3.39 0.74
ofohr8.3  3.45 0.76
austs8.4  3.46 0.71
infrm8.5  2.98 0.95
etwgs8.6  3.27 0.86
ptner8.7  2.72 0.98
ausef8.8  2.74 1.00
auflt8.9  3.21 0.82
mitw8.10  3.18 0.82
eamt8.11  3.31 0.80
hosp8.12  3.09 0.87
pdar8.13  3.07 0.84
eins8.14  2.79 0.95
besw8.15  3.26 0.77
ents8.16  3.10 0.91
eazf8.17  3.18 0.81
ifpd8.18  3.15 0.81
betl8.19  3.35 0.76
gsmt8.20  3.28 0.77
ifokd9.1  3.11 0.81
ifopk9.2  3.08 0.82
ifomg9.3  3.03 0.85
ifotg9.4  3.20 0.81
ifoes9.5  3.50 0.70
ifobe9.6  2.68 1.00
ifoei9.7  3.24 0.72
ifotr9.8  2.84 0.87
Kitadauer 2.28 1.08
Alter     3.97 1.16
Region      NA 2.22
> Elternbefragung_mit98<-read.csv2("Elternbefragung_kodiert.csv")
> head(Elternbefragung_mit98)
  eigwn6.1 bring6.2 abhol6.3 rhslf6.4 umgng7.1 begrs7.2 eltrn7.3 mtein7.4 siort7.5 ermt7.6 gespr8.1 anspr8.2
1        4        4        4        4        4        4        3        4        4       3        3        3
2        3        1        2        3        4        1        3        3        3       3        1        2
3        2        4        4       98        3        4        4        3       98      98        4        3
4        3        3        2        3        3        2        3        1       98       1        2        1
5        3        3        3        3        3        3        3        3        3       3        3        3
6        4        3        3        3        4        4        4       98        3       3        3        3
  ofohr8.3 austs8.4 infrm8.5 etwgs8.6 ptner8.7 ausef8.8 auflt8.9 mitw8.10 eamt8.11 hosp8.12 pdar8.13 eins8.14
1        4        3        4        4        3        3        4        4        4        4        4        4
2        4        3        1        3        1        1        3        3        4        4        3        2
3        3        4        3       98        3       98        3        3        4        4       98       98
4        1        2        1        2        1        1        1        1       98       98        2        2
5        3        3        3        3        3        3        3        3        3        3        3        2
6        3        3        3        3        2        2        2        2       98        3        3       98
  besw8.15 ents8.16 eazf8.17 ifpd8.18 betl8.19 gsmt8.20 ifokd9.1 ifopk9.2 ifomg9.3 ifotg9.4 ifoes9.5 ifobe9.6
1        3        3        4        4        4        4        4        4        3        4        4        4
2        2        2        3        3        3        3        2        3        3        3        4        3
3        2       98        2        3        3        3        3        2        3        3        2       98
4        2        3        1        1        1        1        2        3        2        2        4        3
5        3       98        2        3        3        2        3        3        2        3        3        2
6        3       98        3        3        3        3        3       98       98        3        2        2
  ifoei9.7 ifotr9.8 Kitadauer Alter              Region
1        4        3         3     4 FRÖBEL Berlin gGmbH
2        4        4         4     5 FRÖBEL Berlin gGmbH
3        3        2         1     4 FRÖBEL Berlin gGmbH
4        3        3         4     5 FRÖBEL Berlin gGmbH
5        3        3         2     3 FRÖBEL Berlin gGmbH
6        3        3         2     3 FRÖBEL Berlin gGmbH
> attach(Elternbefragung)
> mean(eigwn6.1)
[1] NA
> mean(eigwn6.1,na.rm=T)
[1] 3.495088
> cor(eigwn6.1,bring6.2)
[1] NA
> mean(Elternbefragung)
[1] NA
Warnmeldung:
In mean.default(Elternbefragung) :
  Argument ist weder numerisch noch boolesch: gebe NA zurück
> mean(Elternbefragung, na.rm=T)
[1] NA
Warnmeldung:
In mean.default(Elternbefragung, na.rm = T) :
  Argument ist weder numerisch noch boolesch: gebe NA zurück
> colmeans(Elternbefragung, na.rm=T)
Fehler: konnte Funktion "colmeans" nicht finden
> mean(Elternbefragung[,c(1:41)], na.rm=T)
[1] NA
Warnmeldung:
In mean.default(Elternbefragung[, c(1:41)], na.rm = T) :
  Argument ist weder numerisch noch boolesch: gebe NA zurück
> write.csv2(Mittelwerte,"Mittelwerte.csv")
> 
