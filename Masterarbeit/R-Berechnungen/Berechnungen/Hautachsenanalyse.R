> fa.parallel(mydata, fa= "fa")--> Parallelanalyse mit der Extraktionsmethode: Hauptachsenanalyse

Parallel analysis suggests that the number of factors =  6  and the number of components =  2 

> VSS(mydata,8, rotate="promax", fm="pa")--> Hauptachsenanalyse
Very Simple Structure
Call: vss(x = x, n = n, rotate = rotate, diagonal = diagonal, fm = fm, 
          n.obs = n.obs, plot = plot, title = title)
VSS complexity 1 achieves a maximimum of 0.94  with  1  factors
VSS complexity 2 achieves a maximimum of 0.7  with  2  factors

The Velicer MAP achieves a minimum of 0.02  with  4  factors 
BIC achieves a minimum of  -87.2  with  6  factors
Sample Size adjusted BIC achieves a minimum of  141.56  with  6  factors

Statistics by number of factors 
vss1 vss2   map dof chisq     prob sqresid  fit RMSEA  BIC SABIC complex
1 0.94 0.00 0.024 152  6523  0.0e+00     6.3 0.94 0.128 5329  5812     1.0
2 0.52 0.70 0.022 134  4304  0.0e+00    32.7 0.70 0.110 3252  3678     1.2
3 0.49 0.50 0.022 117  2879  0.0e+00    46.9 0.57 0.096 1960  2332     1.4
4 0.34 0.44 0.021 101  1264 3.4e-200    61.0 0.44 0.067  471   792     1.5
5 0.30 0.41 0.030  86   821 2.5e-120    63.8 0.42 0.058  145   419     1.4
6 0.28 0.36 0.034  72   478  2.7e-61    65.8 0.40 0.047  -87   142     1.5
eChisq  eRMS eCRMS eBIC
1   3875 0.066 0.070 2681
2   1916 0.047 0.053  864
3   1057 0.035 0.042  138
4    355 0.020 0.026 -438
5    217 0.016 0.022 -458
6    121 0.012 0.018 -444

> fa.pa<-fa(mydata, 2, fm= "pa", rotate="none")
> fa.pa
Factor Analysis using method =  pa
Call: fa(r = mydata, nfactors = 2, rotate = "none", fm = "pa")
Standardized loadings (pattern matrix) based upon correlation matrix
          PA1   PA2   h2   u2 com
gespr8.1 0.75 -0.29 0.65 0.35 1.3
anspr8.2 0.74 -0.20 0.58 0.42 1.1
ofohr8.3 0.64  0.09 0.42 0.58 1.0
austs8.4 0.78 -0.25 0.68 0.32 1.2
infrm8.5 0.76 -0.31 0.68 0.32 1.3
etwgs8.6 0.71 -0.21 0.55 0.45 1.2
ptner8.7 0.71 -0.21 0.55 0.45 1.2
ausef8.8 0.80 -0.25 0.71 0.29 1.2
auflt8.9 0.49  0.03 0.24 0.76 1.0
mitw8.10 0.69  0.31 0.58 0.42 1.4
eamt8.11 0.53  0.36 0.40 0.60 1.8
hosp8.12 0.69  0.22 0.52 0.48 1.2
pdar8.13 0.76  0.05 0.58 0.42 1.0
eins8.14 0.81 -0.02 0.66 0.34 1.0
besw8.15 0.75  0.02 0.57 0.43 1.0
ents8.16 0.74  0.12 0.56 0.44 1.1
eazf8.17 0.74  0.23 0.60 0.40 1.2
ifpd8.18 0.72  0.23 0.56 0.44 1.2
betl8.19 0.69  0.29 0.56 0.44 1.4

                      PA1  PA2
SS loadings           9.73 0.91
Proportion Var        0.51 0.05
Cumulative Var        0.51 0.56
Proportion Explained  0.91 0.09
Cumulative Proportion 0.91 1.00

Mean item complexity =  1.2
Test of the hypothesis that 2 factors are sufficient.

The degrees of freedom for the null model are  171  and the objective function was  13.39 with Chi Square of  34414.97
The degrees of freedom for the model are 134  and the objective function was  1.68 

The root mean square of the residuals (RMSR) is  0.05 
The df corrected root mean square of the residuals is  0.05 

The harmonic number of observations is  2119 with the empirical chi square  1567.65  with prob <  8.1e-243 
The total number of observations was  2579  with MLE Chi Square =  4304.39  with prob <  0 

Tucker Lewis Index of factoring reliability =  0.845
RMSEA index =  0.11  and the 90 % confidence intervals are  0.107 0.113
BIC =  3251.8
Fit based upon off diagonal values = 0.99
Measures of factor score adequacy             
                                                PA1  PA2
Correlation of scores with factors             0.98 0.83
Multiple R square of scores with factors       0.96 0.69
Minimum correlation of possible factor scores  0.92 0.38


> fa.pa<-fa(mydata, 2, fm= "pa", rotate="promax")
> fa.pa
Factor Analysis using method =  pa
Call: fa(r = mydata, nfactors = 2, rotate = "promax", fm = "pa")
Standardized loadings (pattern matrix) based upon correlation matrix
          PA1   PA2   h2   u2 com
gespr8.1  0.83 -0.04 0.65 0.35 1.0
anspr8.2  0.70  0.08 0.58 0.42 1.0
ofohr8.3  0.22  0.46 0.42 0.58 1.4
austs8.4  0.79  0.04 0.68 0.32 1.0
infrm8.5  0.87 -0.06 0.68 0.32 1.0
etwgs8.6  0.70  0.06 0.55 0.45 1.0
ptner8.7  0.70  0.06 0.55 0.45 1.0
ausef8.8  0.81  0.04 0.71 0.29 1.0
auflt8.9  0.23  0.30 0.24 0.76 1.9
mitw8.10 -0.07  0.81 0.58 0.42 1.0
eamt8.11 -0.23  0.80 0.40 0.60 1.2
hosp8.12  0.06  0.68 0.52 0.48 1.0
pdar8.13  0.35  0.46 0.58 0.42 1.9
eins8.14  0.47  0.39 0.66 0.34 1.9
besw8.15  0.39  0.41 0.57 0.43 2.0
ents8.16  0.22  0.56 0.56 0.44 1.3
eazf8.17  0.06  0.72 0.60 0.40 1.0
ifpd8.18  0.06  0.70 0.56 0.44 1.0
betl8.19 -0.05  0.79 0.56 0.44 1.0

                      PA1  PA2
SS loadings           5.50 5.15
Proportion Var        0.29 0.27
Cumulative Var        0.29 0.56
Proportion Explained  0.52 0.48
Cumulative Proportion 0.52 1.00

With factor correlations of 
    PA1  PA2
PA1 1.00 0.77
PA2 0.77 1.00

Mean item complexity =  1.2
Test of the hypothesis that 2 factors are sufficient.

The degrees of freedom for the null model are  171  and the objective function was  13.39 with Chi Square of  34414.97
The degrees of freedom for the model are 134  and the objective function was  1.68 

The root mean square of the residuals (RMSR) is  0.05 
The df corrected root mean square of the residuals is  0.05 

The harmonic number of observations is  2119 with the empirical chi square  1567.65  with prob <  8.1e-243 
The total number of observations was  2579  with MLE Chi Square =  4304.39  with prob <  0 

Tucker Lewis Index of factoring reliability =  0.845
RMSEA index =  0.11  and the 90 % confidence intervals are  0.107 0.113
BIC =  3251.8
Fit based upon off diagonal values = 0.99
Measures of factor score adequacy             
                                                PA1  PA2
Correlation of scores with factors             0.97 0.96
Multiple R square of scores with factors       0.94 0.92
Minimum correlation of possible factor scores  0.88 0.84

> print(fa.pa, digits=2, cutoff=.3, sort=TRUE)
Factor Analysis using method =  pa
Call: fa(r = mydata, nfactors = 2, rotate = "promax", fm = "pa")
Standardized loadings (pattern matrix) based upon correlation matrix

item            PA1   PA2   h2   u2 com
infrm8.5    5  0.87 -0.06 0.68 0.32 1.0
gespr8.1    1  0.83 -0.04 0.65 0.35 1.0
ausef8.8    8  0.81  0.04 0.71 0.29 1.0
austs8.4    4  0.79  0.04 0.68 0.32 1.0
etwgs8.6    6  0.70  0.06 0.55 0.45 1.0
anspr8.2    2  0.70  0.08 0.58 0.42 1.0
ptner8.7    7  0.70  0.06 0.55 0.45 1.0
eins8.14   14  0.47  0.39 0.66 0.34 1.9
mitw8.10   10 -0.07  0.81 0.58 0.42 1.0
eamt8.11   11 -0.23  0.80 0.40 0.60 1.2
betl8.19   19 -0.05  0.79 0.56 0.44 1.0
eazf8.17   17  0.06  0.72 0.60 0.40 1.0
ifpd8.18   18  0.06  0.70 0.56 0.44 1.0
hosp8.12   12  0.06  0.68 0.52 0.48 1.0
ents8.16   16  0.22  0.56 0.56 0.44 1.3
pdar8.13   13  0.35  0.46 0.58 0.42 1.9
ofohr8.3    3  0.22  0.46 0.42 0.58 1.4
besw8.15   15  0.39  0.41 0.57 0.43 2.0
auflt8.9    9  0.23  0.30 0.24 0.76 1.9

                      PA1  PA2
SS loadings           5.50 5.15
Proportion Var        0.29 0.27
Cumulative Var        0.29 0.56
Proportion Explained  0.52 0.48
Cumulative Proportion 0.52 1.00

With factor correlations of 
    PA1  PA2
PA1 1.00 0.77
PA2 0.77 1.00

Mean item complexity =  1.2
Test of the hypothesis that 2 factors are sufficient.

The degrees of freedom for the null model are  171  and the objective function was  13.39 0.3 with Chi Square of  34414.97
The degrees of freedom for the model are 134  and the objective function was  1.68 
0.3
The root mean square of the residuals (RMSR) is  0.05 
The df corrected root mean square of the residuals is  0.05 
0.3
The harmonic number of observations is  2119 with the empirical chi square  1567.65  with prob <  8.1e-243 
0.3
The total number of observations was  2579  with MLE Chi Square =  4304.39  with prob <  0 
0.3
Tucker Lewis Index of factoring reliability =  0.845
RMSEA index =  0.11  and the 90 % confidence intervals are  0.107 0.113 0.3
BIC =  3251.8
Fit based upon off diagonal values = 0.99
Measures of factor score adequacy             
                                               PA1  PA2
Correlation of scores with factors             0.97 0.96
Multiple R square of scores with factors       0.94 0.92
Minimum correlation of possible factor scores  0.88 0.84

> print(fa.pa$loadings, digits=2, cutoff=.3, sort=TRUE)

Loadings:
          PA1   PA2  
gespr8.1  0.83      
anspr8.2  0.70      
austs8.4  0.79      
infrm8.5  0.87      
etwgs8.6  0.70      
ptner8.7  0.70      
ausef8.8  0.81      
mitw8.10        0.81
eamt8.11        0.80
hosp8.12        0.68
ents8.16        0.56
eazf8.17        0.72
ifpd8.18        0.70
betl8.19        0.79
ofohr8.3        0.46
auflt8.9            
pdar8.13  0.35  0.46
eins8.14  0.47  0.39
besw8.15  0.39  0.41

                PA1  PA2
SS loadings    4.90 4.56
Proportion Var 0.26 0.24
Cumulative Var 0.26 0.50

> fa.pa$STATISTIC--> nur ch² wird ausgegeben
[1] 4304.389

#Cronbachs Alpha für PA1 und PA2
> reliability(mydata[,c("gespr8.1","anspr8.2","austs8.4","infrm8.5","etwgs8.6","ptner8.7","ausef8.8","eins8.14")])

Number of Items 
8 

Number of Examinees 
1646 

Coefficient Alpha 
0.935 

> reliability(mydata[,c("ofohr8.3","auflt8.9","mitw8.10","eamt8.11","hosp8.12","pdar8.13","besw8.15","ents8.16","eazf8.17","ifpd8.18","betl8.19")])

Number of Items 
11 

Number of Examinees 
1308 

Coefficient Alpha 
0.922 

#Determinant überprüfung vor der Faktorenanalyse
der determinant soll größer sein als 0.00001, wenn er ist, dann ist 
die multikollnearität kein problem
