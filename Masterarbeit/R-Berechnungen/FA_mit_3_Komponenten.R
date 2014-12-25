#FA
# Z-Standardisierung: 
> z <- scale(varimaxvalues, center=TRUE, scale=TRUE)
ODER scale(), z.B. round(scale(mydata),2)

#Unrotiert:
> fit <- principal(mydata, nfactors=3, rotate="none")
> fit
Principal Components Analysis
Call: principal(r = mydata, nfactors = 3, rotate = "none")
Standardized loadings (pattern matrix) based upon correlation matrix
          PC1   PC2   PC3   h2   u2
gespr8.1 0.76 -0.33 -0.03 0.69 0.31
anspr8.2 0.75 -0.24  0.01 0.62 0.38
ofohr8.3 0.66  0.12  0.03 0.46 0.54
austs8.4 0.79 -0.28 -0.02 0.71 0.29
infrm8.5 0.77 -0.35  0.01 0.71 0.29
etwgs8.6 0.73 -0.28 -0.07 0.61 0.39
ptner8.7 0.73 -0.26  0.19 0.63 0.37
ausef8.8 0.81 -0.27  0.17 0.76 0.24
auflt8.9 0.52  0.05  0.33 0.38 0.62
mitw8.10 0.71  0.38  0.18 0.68 0.32
eamt8.11 0.55  0.54  0.38 0.73 0.27
hosp8.12 0.71  0.30  0.36 0.72 0.28
pdar8.13 0.78  0.04 -0.04 0.61 0.39
eins8.14 0.82 -0.03  0.07 0.68 0.32
besw8.15 0.77  0.00 -0.03 0.59 0.41
ents8.16 0.75  0.12 -0.14 0.60 0.40
eazf8.17 0.75  0.23 -0.41 0.78 0.22
ifpd8.18 0.73  0.23 -0.40 0.75 0.25
betl8.19 0.70  0.32 -0.40 0.75 0.25

                        PC1  PC2  PC3
SS loadings           10.15 1.35 1.00
Proportion Var         0.53 0.07 0.05
Cumulative Var         0.53 0.61 0.66
Proportion Explained   0.81 0.11 0.08
Cumulative Proportion  0.81 0.92 1.00

Test of the hypothesis that 3 components are sufficient.

The degrees of freedom for the null model are  171  and the objective function was  13.39
The degrees of freedom for the model are 117  and the objective function was  1.46 
The total number of observations was  2579  with MLE Chi Square =  3756.59  with prob <  0 

Fit based upon off diagonal values = 0.99

#Rotiert:
> fa.pc=principal(mydata,3,fm="pc",rotate="promax")
> principal(mydata,3,fm="pc",rotate="promax")
ODER:
> fit <- principal(mydata, nfactors=3, rotate="promax")
> fit
The principal( ) function in the psych package can be used 
to extract and rotate principal components

Principal Components Analysis
Call: principal(r = mydata, nfactors = 3, rotate = "promax", fm = "pc")
Standardized loadings (pattern matrix) based upon correlation matrix
          PC1   PC3   PC2   h2   u2
gespr8.1  0.91  0.05 -0.17 0.69 0.31
anspr8.2  0.79  0.05 -0.06 0.62 0.38
ofohr8.3  0.23  0.23  0.30 0.46 0.54
austs8.4  0.86  0.08 -0.11 0.71 0.29
infrm8.5  0.95 -0.01 -0.15 0.71 0.29
etwgs8.6  0.80  0.13 -0.18 0.61 0.39
ptner8.7  0.85 -0.21  0.11 0.63 0.37
ausef8.8  0.91 -0.17  0.11 0.76 0.24
auflt8.9  0.34 -0.25  0.51 0.38 0.62
mitw8.10 -0.05  0.21  0.71 0.68 0.32
eamt8.11 -0.32  0.01  1.03 0.73 0.27
hosp8.12  0.10 -0.07  0.82 0.72 0.28
pdar8.13  0.40  0.30  0.17 0.61 0.39
eins8.14  0.56  0.12  0.23 0.68 0.32
besw8.15  0.45  0.26  0.14 0.59 0.41
ents8.16  0.24  0.48  0.14 0.60 0.40
eazf8.17  0.02  0.90 -0.04 0.78 0.22
ifpd8.18  0.00  0.89 -0.04 0.75 0.25
betl8.19 -0.13  0.93  0.05 0.75 0.25

                      PC1  PC3  PC2
SS loadings           6.35 3.32 2.83
Proportion Var        0.33 0.17 0.15
Cumulative Var        0.33 0.51 0.66
Proportion Explained  0.51 0.27 0.23
Cumulative Proportion 0.51 0.77 1.00

With component correlations of 
    PC1  PC3  PC2
PC1 1.00 0.70 0.68
PC3 0.70 1.00 0.65
PC2 0.68 0.65 1.00

Test of the hypothesis that 3 components are sufficient.

The degrees of freedom for the null model are  171  and the objective function was  13.39
The degrees of freedom for the model are 117  and the objective function was  1.46 
The total number of observations was  2579  with MLE Chi Square =  3756.59  with prob <  0 

Fit based upon off diagonal values = 0.99

# > print(fa.pc$loadings, digits=2, cutoff=.3)

Loadings:
          PC1   PC3   PC2  
gespr8.1  0.91            
anspr8.2  0.79            
ofohr8.3                  
austs8.4  0.86            
infrm8.5  0.95            
etwgs8.6  0.80            
ptner8.7  0.85            
ausef8.8  0.91            
auflt8.9  0.34        0.51
mitw8.10              0.71
eamt8.11 -0.32        1.03
hosp8.12              0.82
pdar8.13  0.40            
eins8.14  0.56            
besw8.15  0.45            
ents8.16        0.48      
eazf8.17        0.90      
ifpd8.18        0.89      
betl8.19        0.93      

                PC1  PC3  PC2
SS loadings    6.32 3.12 2.85
Proportion Var 0.33 0.16 0.15
Cumulative Var 0.33 0.50 0.65

#Faktorwerte berechnen:
> fit$scores

#Faktorwerte in Exceltabelle spreichern: Paket (car) laden  
> write.csv2(faktorwerte,"Faktorwerte.csv")

#Korrelation zwischen gsmt8.20 und den Faktorwerten:
> cor.matrix<-cbind(gsmt8.20,newdata)
> rcorr(cor.matrix)

          gsmt8.20 PC1  PC3  PC2
gsmt8.20     1.00 0.22 0.22 0.17
PC1          0.22 1.00 0.71 0.71
PC3          0.22 0.71 1.00 0.68
PC2          0.17 0.71 0.68 1.00

n
        gsmt8.20  PC1  PC3  PC2
gsmt8.20     2579 1082 1082 1082
PC1          1082 2579 1086 1086
PC3          1082 1086 2579 1086
PC2          1082 1086 1086 2579

P
gsmt8.20 PC1 PC3 PC2
gsmt8.20           0   0   0 
PC1       0            0   0 
PC3       0        0       0 
PC2       0        0   0  
