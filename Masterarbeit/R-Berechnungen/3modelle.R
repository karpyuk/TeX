> fa.pa<-fa(mydata,1, fm="pa", rotate="promax")
> fa.pa
Factor Analysis using method =  pa
Call: fa(r = mydata, nfactors = 1, rotate = "promax", fm = "pa")
Standardized loadings (pattern matrix) based upon correlation matrix
          PA1   h2   u2 com
gespr8.1 0.75 0.56 0.44   1
anspr8.2 0.73 0.54 0.46   1
ofohr8.3 0.64 0.41 0.59   1
austs8.4 0.78 0.61 0.39   1
infrm8.5 0.76 0.57 0.43   1
etwgs8.6 0.71 0.51 0.49   1
ptner8.7 0.71 0.50 0.50   1
ausef8.8 0.80 0.64 0.36   1
auflt8.9 0.50 0.25 0.75   1
mitw8.10 0.69 0.47 0.53   1
eamt8.11 0.52 0.27 0.73   1
hosp8.12 0.69 0.47 0.53   1
pdar8.13 0.76 0.59 0.41   1
eins8.14 0.82 0.67 0.33   1
besw8.15 0.76 0.57 0.43   1
ents8.16 0.74 0.54 0.46   1
eazf8.17 0.73 0.54 0.46   1
ifpd8.18 0.71 0.51 0.49   1
betl8.19 0.68 0.47 0.53   1

                PA1
SS loadings    9.68
Proportion Var 0.51

Mean item complexity =  1
Test of the hypothesis that 1 factor is sufficient.

The degrees of freedom for the null model are  171  and the objective function was  13.39 with Chi Square of  34414.97
The degrees of freedom for the model are 152  and the objective function was  2.54 

The root mean square of the residuals (RMSR) is  0.07 
The df corrected root mean square of the residuals is  0.07 

The harmonic number of observations is  2119 with the empirical chi square  3227.71  with prob <  0 
The total number of observations was  2579  with MLE Chi Square =  6523.1  with prob <  0 

Tucker Lewis Index of factoring reliability =  0.791
RMSEA index =  0.128  and the 90 % confidence intervals are  0.125 0.13
BIC =  5329.11
Fit based upon off diagonal values = 0.98
Measures of factor score adequacy             
                                               PA1
Correlation of scores with factors             0.98
Multiple R square of scores with factors       0.96
Minimum correlation of possible factor scores  0.91

> fa.pa<-fa(mydata,4, fm="pa", rotate="promax")
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
             
> fa.pa<-fa(mydata,6, fm="pa", rotate="promax")
> fa.pa
Factor Analysis using method =  pa
Call: fa(r = mydata, nfactors = 6, rotate = "promax", fm = "pa")
Standardized loadings (pattern matrix) based upon correlation matrix
          PA4   PA3   PA1   PA2   PA5   PA6   h2   u2 com
gespr8.1  0.77  0.01  0.08 -0.04  0.01  0.01 0.69 0.31 1.0
anspr8.2  0.90 -0.11 -0.10 -0.02 -0.07  0.25 0.74 0.26 1.2
ofohr8.3  0.44  0.06 -0.13  0.17 -0.09  0.33 0.51 0.49 2.6
austs8.4  0.84  0.03  0.05  0.03 -0.05 -0.01 0.75 0.25 1.0
infrm8.5  0.48  0.04  0.34 -0.04  0.14 -0.11 0.68 0.32 2.2
etwgs8.6  0.50  0.14  0.18 -0.01  0.08 -0.09 0.56 0.44 1.6
ptner8.7 -0.01  0.01  0.87 -0.01 -0.03 -0.01 0.71 0.29 1.0
ausef8.8  0.06 -0.04  0.93 -0.01  0.01  0.00 0.89 0.11 1.0
auflt8.9 -0.04  0.01  0.36  0.08 -0.04  0.23 0.29 0.71 1.9
mitw8.10  0.01  0.18  0.10  0.53 -0.06  0.11 0.61 0.39 1.4
eamt8.11 -0.06 -0.02 -0.06  1.01  0.02 -0.17 0.69 0.31 1.1
hosp8.12  0.05 -0.09  0.06  0.63  0.14  0.09 0.63 0.37 1.2
pdar8.13  0.11  0.18 -0.03  0.18  0.50 -0.01 0.65 0.35 1.7
eins8.14 -0.06 -0.06  0.12  0.04  0.72  0.27 0.83 0.17 1.4
besw8.15  0.16  0.02  0.02 -0.13  0.29  0.57 0.66 0.34 1.8
ents8.16 -0.05  0.27  0.06 -0.07  0.28  0.39 0.60 0.40 2.9
eazf8.17  0.00  0.85 -0.03 -0.07  0.01  0.09 0.73 0.27 1.0
ifpd8.18 -0.06  0.91  0.02  0.02  0.05 -0.11 0.73 0.27 1.0
betl8.19  0.03  0.85 -0.04  0.06 -0.16  0.06 0.68 0.32 1.1

                      PA4  PA3  PA1  PA2  PA5  PA6
SS loadings           3.25 2.62 2.27 1.82 1.39 1.30
Proportion Var        0.17 0.14 0.12 0.10 0.07 0.07
Cumulative Var        0.17 0.31 0.43 0.52 0.60 0.67
Proportion Explained  0.26 0.21 0.18 0.14 0.11 0.10
Cumulative Proportion 0.26 0.46 0.64 0.79 0.90 1.00

With factor correlations of 
     PA4  PA3  PA1  PA2  PA5  PA6
PA4 1.00 0.69 0.75 0.57 0.69 0.60
PA3 0.69 1.00 0.65 0.66 0.68 0.67
PA1 0.75 0.65 1.00 0.58 0.75 0.57
PA2 0.57 0.66 0.58 1.00 0.52 0.74
PA5 0.69 0.68 0.75 0.52 1.00 0.46
PA6 0.60 0.67 0.57 0.74 0.46 1.00

Mean item complexity =  1.5
Test of the hypothesis that 6 factors are sufficient.

The degrees of freedom for the null model are  171  and the objective function was  13.39 with Chi Square of  34414.97
The degrees of freedom for the model are 72  and the objective function was  0.19 

The root mean square of the residuals (RMSR) is  0.01 
The df corrected root mean square of the residuals is  0.02 

The harmonic number of observations is  2119 with the empirical chi square  101.44  with prob <  0.013 
The total number of observations was  2579  with MLE Chi Square =  478.37  with prob <  2.7e-61 

Tucker Lewis Index of factoring reliability =  0.972
RMSEA index =  0.047  and the 90 % confidence intervals are  0.043 0.051
BIC =  -87.2
Fit based upon off diagonal values = 1
Measures of factor score adequacy             
                                               PA4  PA3  PA1  PA2  PA5
Correlation of scores with factors             0.96 0.95 0.96 0.93 0.92
Multiple R square of scores with factors       0.92 0.91 0.93 0.86 0.84
Minimum correlation of possible factor scores  0.84 0.82 0.86 0.72 0.68
PA6
Correlation of scores with factors             0.87
Multiple R square of scores with factors       0.76
Minimum correlation of possible factor scores  0.53
> 
