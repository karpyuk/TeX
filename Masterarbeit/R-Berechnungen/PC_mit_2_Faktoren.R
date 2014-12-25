#für Ordinale Daten wird eine Polychorische Korrelation berechnet:
> install.packages("polycor")
> library(polycor)
> polychor(mydata)

# Um rauszufinden wie viele Faktoren sinnvoll zu extrahieren wären:
> vss(mydata)
ODER
> my.vss <- VSS(mydata,n=8,rotate="none",diagonal=FALSE)
> VSS.plot(my.vss)

Loading required package: MASS
Loading required package: parallel

Very Simple Structure
Call: vss(x = mydata)
VSS complexity 1 achieves a maximimum of 0.94  with  1  factors
VSS complexity 2 achieves a maximimum of 0.96  with  2  factors

The Velicer MAP achieves a minimum of 0.02  with  4  factors 
BIC achieves a minimum of  -180.28  with  7  factors
Sample Size adjusted BIC achieves a minimum of  -15.77  with  8  factors

Statistics by number of factors 
  vss1 vss2   map dof chisq     prob sqresid  fit RMSEA  BIC  SABIC complex
1 0.94 0.00 0.024 152  6509  0.0e+00     6.3 0.94 0.128 5315 5797.5     1.0
2 0.53 0.96 0.022 134  4230  0.0e+00     4.7 0.96 0.109 3178 3603.3     1.6
3 0.39 0.80 0.022 117  2698  0.0e+00     3.9 0.96 0.093 1779 2150.4     2.1
4 0.31 0.65 0.021 101  1226 1.5e-192     3.0 0.97 0.066  432  753.4     2.4
5 0.31 0.57 0.030  86   732 3.5e-103     2.7 0.97 0.054   57  330.1     2.6
6 0.27 0.55 0.034  72   460  7.0e-58     2.5 0.98 0.046 -106  123.1     2.8
7 0.24 0.52 0.040  59   283  5.0e-31     2.3 0.98 0.039 -180    7.2     2.9
8 0.26 0.54 0.049  47   204  1.8e-21     2.2 0.98 0.036 -165  -15.8     3.0
eChisq   eRMS eCRMS eBIC
1   3927 0.0667 0.071 2733
2   1976 0.0473 0.053  923
3   1222 0.0372 0.045  303
4    372 0.0205 0.027 -421
5    230 0.0161 0.023 -446
6    131 0.0122 0.019 -435
7     89 0.0100 0.017 -375
8     63 0.0084 0.016 -306

#Unrotiert
> fit <- principal(mydata, nfactors=2, rotate="none")
> fit
Principal Components Analysis
Call: principal(r = mydata, nfactors = 2, rotate = "none")
Standardized loadings (pattern matrix) based upon correlation matrix
          PC1   PC2   h2   u2
gespr8.1 0.76 -0.33 0.69 0.31
anspr8.2 0.75 -0.24 0.62 0.38
ofohr8.3 0.66  0.12 0.46 0.54
austs8.4 0.79 -0.28 0.71 0.29
infrm8.5 0.77 -0.35 0.71 0.29
etwgs8.6 0.73 -0.28 0.61 0.39
ptner8.7 0.73 -0.26 0.60 0.40
ausef8.8 0.81 -0.27 0.73 0.27
auflt8.9 0.52  0.05 0.27 0.73
mitw8.10 0.71  0.38 0.65 0.35
eamt8.11 0.55  0.54 0.59 0.41
hosp8.12 0.71  0.30 0.59 0.41
pdar8.13 0.78  0.04 0.61 0.39
eins8.14 0.82 -0.03 0.68 0.32
besw8.15 0.77  0.00 0.59 0.41
ents8.16 0.75  0.12 0.58 0.42
eazf8.17 0.75  0.23 0.62 0.38
ifpd8.18 0.73  0.23 0.59 0.41
betl8.19 0.70  0.32 0.60 0.40

                        PC1  PC2
SS loadings           10.15 1.35
Proportion Var         0.53 0.07
Cumulative Var         0.53 0.61
Proportion Explained   0.88 0.12
Cumulative Proportion  0.88 1.00

Test of the hypothesis that 2 components are sufficient.

The degrees of freedom for the null model are  171  and the objective function was  13.39
The degrees of freedom for the model are 134  and the objective function was  1.85 
The total number of observations was  2579  with MLE Chi Square =  4761.43  with prob <  0 

Fit based upon off diagonal values = 0.99

#Rotiert
> fit <- principal(mydata, nfactors=2, rotate="promax")
> fit
Principal Components Analysis
Call: principal(r = mydata, nfactors = 2, rotate = "promax")
Standardized loadings (pattern matrix) based upon correlation matrix
          PC1   PC2   h2   u2
gespr8.1  0.90 -0.10 0.69 0.31
anspr8.2  0.78  0.02 0.62 0.38
ofohr8.3  0.24  0.48 0.46 0.54
austs8.4  0.85 -0.01 0.71 0.29
infrm8.5  0.93 -0.12 0.71 0.29
etwgs8.6  0.81 -0.04 0.61 0.39
ptner8.7  0.79 -0.02 0.60 0.40
ausef8.8  0.85  0.00 0.73 0.27
auflt8.9  0.25  0.31 0.27 0.73
mitw8.10 -0.08  0.86 0.65 0.35
eamt8.11 -0.39  1.00 0.59 0.41
hosp8.12  0.02  0.75 0.59 0.41
pdar8.13  0.42  0.42 0.61 0.39
eins8.14  0.54  0.34 0.68 0.32
besw8.15  0.47  0.36 0.59 0.41
ents8.16  0.29  0.52 0.58 0.42
eazf8.17  0.15  0.67 0.62 0.38
ifpd8.18  0.13  0.66 0.59 0.41
betl8.19  0.00  0.77 0.60 0.40

PC1  PC2
SS loadings           6.37 5.13
Proportion Var        0.34 0.27
Cumulative Var        0.34 0.61
Proportion Explained  0.55 0.45
Cumulative Proportion 0.55 1.00

With component correlations of 
    PC1  PC2
PC1 1.00 0.73
PC2 0.73 1.00

Test of the hypothesis that 2 components are sufficient.

The degrees of freedom for the null model are  171  and the objective function was  13.39
The degrees of freedom for the model are 134  and the objective function was  1.85 
The total number of observations was  2579  with MLE Chi Square =  4761.43  with prob <  0 

Fit based upon off diagonal values = 0.99

> print(fit$loadings, digits=2, cutoff=.3)

Loadings:
          PC1   PC2  
gespr8.1  0.90      
anspr8.2  0.78      
ofohr8.3        0.48
austs8.4  0.85      
infrm8.5  0.93      
etwgs8.6  0.81      
ptner8.7  0.79      
ausef8.8  0.85      
auflt8.9        0.31
mitw8.10        0.86
eamt8.11 -0.39  1.00
hosp8.12        0.75
pdar8.13  0.42  0.42
eins8.14  0.54  0.34
besw8.15  0.47  0.36
ents8.16        0.52
eazf8.17        0.67
ifpd8.18        0.66
betl8.19        0.77

PC1  PC2
SS loadings    6.10 4.85
Proportion Var 0.32 0.26
Cumulative Var 0.32 0.58

#Faktorwerte berechnen:
> fit$scores

# Skalenmittelwert für alle Faktoren berechnen:
> rowMeans(mydata[,c("gespr8.1","anspr8.2","ofohr8.3","austs8.4",
                       "infrm8.5","etwgs8.6","ptner8.7","ausef8.8",
                     "auflt8.9","mitw8.10","eamt8.11","hosp8.12",
                     "pdar8.13","eins8.14","besw8.15","ents8.16",
                      "eazf8.17","ifpd8.18","betl8.19")], na.rm=TRUE)

#Skalenmittelwerte für den 1. Faktor:
> rowMeans(mydata[,c("gespr8.1","anspr8.2","austs8.4",
"infrm8.5","etwgs8.6","ptner8.7","ausef8.8","eins8.14","besw8.15")],na.rm=TRUE)

# Skalenmittelwerte in eine Variable speichern:
> smw_fa1<-rowMeans(mydata[,c("gespr8.1","anspr8.2","austs8.4",
"infrm8.5","etwgs8.6","ptner8.7","ausef8.8","eins8.14","besw8.15")],na.rm=TRUE)
> smw_fa1

#Skalenmittelwerte für den 2. Faktor:
> SMW_fa2<-rowMeans(mydata[,c("ofohr8.3","auflt8.9","mitw8.10","eamt8.11","hosp8.12","pdar8.13","eins8.14","besw8.15","ents8.16","eazf8.17","ifpd8.18","betl8.19")],na.rm=TRUE)
> SMW_fa2

#Um die Mitellwerte in einer Variable zu speichern
> write.csv2(smw_fa,"hauptkompon")

#Step 2:Korellation zwischen Gesamteinschätzung und den beiden Faktoren:
> cor.matrix<-cbind(gsmt8.20,Austausch,Beteiligung)
> rcorr(cor.matrix)

              gsmt8.20 Austausch Beteiligung
gsmt8.20        1.00      0.69        0.74
Austausch       0.69      1.00        0.82
Beteiligung     0.74      0.82        1.00

n
gsmt8.20 Austausch Beteiligung
gsmt8.20        2579      2504        2503
Austausch       2504      2579        2577
Beteiligung     2503      2577        2579

P
gsmt8.20 Austausch Beteiligung
gsmt8.20              0         0         
Austausch    0                  0         
Beteiligung  0        0                   
