> fa.pa<-fa(mydata, 4, fm= "pa", rotate="promax")
> fa.pa
Factor Analysis using method =  pa
Call: fa(r = mydata, nfactors = 4, rotate = "promax", fm = "pa")
Standardized loadings (pattern matrix) based upon correlation matrix
          PA3   PA1   PA4   PA2   h2   u2 com
gespr8.1 -0.01  0.18  0.76 -0.10 0.69 0.31 1.1
anspr8.2 -0.10 -0.12  0.98  0.06 0.75 0.25 1.1
ofohr8.3  0.10 -0.23  0.53  0.34 0.49 0.51 2.2
austs8.4 -0.01  0.09  0.82 -0.04 0.74 0.26 1.0
infrm8.5  0.02  0.55  0.40 -0.15 0.66 0.34 2.0
etwgs8.6  0.13  0.32  0.44 -0.11 0.55 0.45 2.2
ptner8.7 -0.08  0.91 -0.05  0.01 0.67 0.33 1.0
ausef8.8 -0.13  1.01  0.01  0.01 0.85 0.15 1.0
auflt8.9  0.01  0.31  0.00  0.24 0.26 0.74 1.9
mitw8.10  0.15  0.00  0.02  0.65 0.61 0.39 1.1
eamt8.11 -0.09 -0.08 -0.11  0.94 0.59 0.41 1.1
hosp8.12 -0.12  0.14  0.04  0.77 0.65 0.35 1.1
pdar8.13  0.30  0.35  0.05  0.15 0.59 0.41 2.4
eins8.14  0.17  0.61 -0.04  0.17 0.71 0.29 1.3
besw8.15  0.23  0.20  0.26  0.15 0.56 0.44 3.6
ents8.16  0.45  0.23  0.01  0.13 0.56 0.44 1.7
eazf8.17  0.97 -0.07 -0.01 -0.08 0.74 0.26 1.0
ifpd8.18  0.96  0.04 -0.12 -0.08 0.71 0.29 1.1
betl8.19  0.88 -0.21  0.04  0.06 0.65 0.35 1.1

                      PA3  PA1  PA4  PA2
SS loadings           3.08 3.42 3.23 2.31
Proportion Var        0.16 0.18 0.17 0.12
Cumulative Var        0.16 0.34 0.51 0.63
Proportion Explained  0.26 0.28 0.27 0.19
Cumulative Proportion 0.26 0.54 0.81 1.00

With factor correlations of 
    PA3  PA1  PA4  PA2
PA3 1.00 0.75 0.75 0.75
PA1 0.75 1.00 0.78 0.67
PA4 0.75 0.78 1.00 0.66
PA2 0.75 0.67 0.66 1.00

Mean item complexity =  1.5
Test of the hypothesis that 4 factors are sufficient.

The degrees of freedom for the null model are  171  and the objective function was  13.39 with Chi Square of  34414.97
The degrees of freedom for the model are 101  and the objective function was  0.49 

The root mean square of the residuals (RMSR) is  0.02 
The df corrected root mean square of the residuals is  0.03 

The harmonic number of observations is  2119 with the empirical chi square  285.81  with prob <  1.5e-19 
The total number of observations was  2579  with MLE Chi Square =  1264.15  with prob <  3.4e-200 

Tucker Lewis Index of factoring reliability =  0.942
RMSEA index =  0.067  and the 90 % confidence intervals are  0.064 0.07
BIC =  470.78
Fit based upon off diagonal values = 1
Measures of factor score adequacy             
PA3  PA1  PA4  PA2
Correlation of scores with factors             0.96 0.97 0.96 0.94
Multiple R square of scores with factors       0.92 0.94 0.92 0.87
Minimum correlation of possible factor scores  0.85 0.87 0.85 0.75

> print(fa.pa$loadings, digits=2, cutoff=.3, sort=TRUE)

Loadings:
          PA3   PA1   PA4   PA2  
eazf8.17  0.97                  
ifpd8.18  0.96                  
betl8.19  0.88                  
infrm8.5        0.55  0.40      
ptner8.7        0.91            
ausef8.8        1.01            
eins8.14        0.61            
gespr8.1              0.76      
anspr8.2              0.98      
ofohr8.3              0.53  0.34
austs8.4              0.82      
mitw8.10                    0.65
eamt8.11                    0.94
hosp8.12                    0.77
etwgs8.6        0.32  0.44      
auflt8.9        0.31            
pdar8.13        0.35            
besw8.15                        
ents8.16  0.45                  

              PA3  PA1  PA4  PA2
SS loadings    3.12 3.11 2.95 2.23
Proportion Var 0.16 0.16 0.16 0.12
Cumulative Var 0.16 0.33 0.48 0.60

> fa.pa<-fa(mydata, 4, fm= "pa", rotate="none")
> fa.pa
Factor Analysis using method =  pa
Call: fa(r = mydata, nfactors = 4, rotate = "none", fm = "pa")
Standardized loadings (pattern matrix) based upon correlation matrix
          PA1   PA2   PA3   PA4   h2   u2 com
gespr8.1 0.75 -0.29 -0.07  0.19 0.69 0.31 1.4
anspr8.2 0.75 -0.23 -0.04  0.37 0.75 0.25 1.7
ofohr8.3 0.64  0.09  0.02  0.27 0.49 0.51 1.4
austs8.4 0.79 -0.25 -0.06  0.24 0.74 0.26 1.4
infrm8.5 0.76 -0.29 -0.02 -0.05 0.66 0.34 1.3
etwgs8.6 0.71 -0.20 -0.07  0.02 0.55 0.45 1.2
ptner8.7 0.72 -0.23  0.14 -0.28 0.67 0.33 1.6
ausef8.8 0.81 -0.28  0.17 -0.29 0.85 0.15 1.6
auflt8.9 0.49  0.02  0.12 -0.07 0.26 0.74 1.2
mitw8.10 0.69  0.30  0.18  0.07 0.61 0.39 1.5
eamt8.11 0.54  0.41  0.36  0.10 0.59 0.41 2.8
hosp8.12 0.70  0.24  0.33  0.07 0.65 0.35 1.7
pdar8.13 0.76  0.04  0.00 -0.10 0.59 0.41 1.0
eins8.14 0.81 -0.02  0.08 -0.19 0.71 0.29 1.1
besw8.15 0.75  0.01 -0.01  0.02 0.56 0.44 1.0
ents8.16 0.73  0.11 -0.07 -0.09 0.56 0.44 1.1
eazf8.17 0.75  0.25 -0.34 -0.07 0.74 0.26 1.7
ifpd8.18 0.72  0.25 -0.32 -0.15 0.71 0.29 1.7
betl8.19 0.69  0.31 -0.28  0.01 0.65 0.35 1.7

                      PA1  PA2  PA3  PA4
SS loadings           9.80 1.01 0.65 0.57
Proportion Var        0.52 0.05 0.03 0.03
Cumulative Var        0.52 0.57 0.60 0.63
Proportion Explained  0.81 0.08 0.05 0.05
Cumulative Proportion 0.81 0.90 0.95 1.00

Mean item complexity =  1.5
Test of the hypothesis that 4 factors are sufficient.

The degrees of freedom for the null model are  171  and the objective function was  13.39 with Chi Square of  34414.97
The degrees of freedom for the model are 101  and the objective function was  0.49 

The root mean square of the residuals (RMSR) is  0.02 
The df corrected root mean square of the residuals is  0.03 

The harmonic number of observations is  2119 with the empirical chi square  285.81  with prob <  1.5e-19 
The total number of observations was  2579  with MLE Chi Square =  1264.15  with prob <  3.4e-200 

Tucker Lewis Index of factoring reliability =  0.942
RMSEA index =  0.067  and the 90 % confidence intervals are  0.064 0.07
BIC =  470.78
Fit based upon off diagonal values = 1
Measures of factor score adequacy             
                                               PA1  PA2  PA3  PA4
Correlation of scores with factors             0.98 0.87 0.82 0.83
Multiple R square of scores with factors       0.97 0.76 0.67 0.68
Minimum correlation of possible factor scores  0.94 0.53 0.34 0.36


> reliability(mydata[,c("ents8.16","eazf8.17","ifpd8.18","betl8.19")])

Number of Items 
4 

Number of Examinees 
1950 

Coefficient Alpha 
0.874 
> reliability(mydata[,c("ents8.16","eazf8.17","ifpd8.18","betl8.19")])

Number of Items 
4 

Number of Examinees 
1950 

Coefficient Alpha 
0.874 
> reliability(mydata[,c("infrm8.5","ptner8.7","ausef8.8","eins8.14","auflt8.9","pdar8.13")])

Number of Items 
6 

Number of Examinees 
1785 

Coefficient Alpha 
0.899 
> reliability(mydata[,c("gespr8.1","anspr8.2","austs8.4","etwgs8.6","besw8.15")])

Number of Items 
5 

Number of Examinees 
1939 

Coefficient Alpha 
0.889 
> reliability(mydata[,c("mitw8.10","eamt8.11","hosp8.12")])

Number of Items 
3 

Number of Examinees 
1694 

Coefficient Alpha 
0.822 

> round(reliability(mydata[,c("ents8.16","eazf8.17","ifpd8.18","betl8.19")])$alphaIfDeleted,3)
[1] 0.881 0.816 0.825 0.835
> round(reliability(mydata[,c("mitw8.10","eamt8.11","hosp8.12")])$alphaIfDeleted,3)
[1] 0.767 0.737 0.760
> round(reliability(mydata[,c("gespr8.1","anspr8.2","austs8.4","etwgs8.6","ofohr8.3","besw8.15")])$alphaIfDeleted,3)
[1] 0.868 0.863 0.861 0.883 0.891 0.879
> round(reliability(mydata[,c("infrm8.5","ptner8.7","ausef8.8","auflt8.9","pdar8.13","eins8.14")])$alphaIfDeleted,3)
[1] 0.876 0.874 0.862 0.911 0.884 0.873

#Skalenmittelwerte berechnen
> rowMeans(mydata[,c("gespr8.1","anspr8.2","ofohr8.3","austs8.4",
                     "etwgs8.6","besw8.15")],na.rm=TRUE)
#Variablen speichern
> write.csv2(smw_fa4,"factor1.csv")
