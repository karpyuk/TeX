#Multiple Regression:
> mult.reg<-lm(gsmt8.20~faktorwerte+Alter+Kitadauer)
> summary(mult.reg)

Call:
  lm(formula = gsmt8.20 ~ faktorwerte + Alter + Kitadauer)

Residuals:
  Min     1Q Median     3Q    Max 
-2.116 -0.589  0.042  0.366 95.358 

Coefficients:
                 Estimate Std. Error t value Pr(>|t|)    
  (Intercept)     2.73837    0.37182   7.365 3.55e-13 ***
  faktorwertePC1  0.44562    0.14489   3.076  0.00215 ** 
  faktorwertePC3  0.41521    0.13595   3.054  0.00231 ** 
  faktorwertePC2 -0.08819    0.13574  -0.650  0.51605    
  Alter          -0.02684    0.11369  -0.236  0.81341    
  Kitadauer       0.14629    0.11826   1.237  0.21636    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3.002 on 1065 degrees of freedom
(1508 observations deleted due to missingness)
Multiple R-squared:  0.05906,  Adjusted R-squared:  0.05464 
F-statistic: 13.37 on 5 and 1065 DF,  p-value: 1.164e-12

#Stepwiseregression:
> fit<-lm(gsmt8.20~Austausch+Beteiligung+Elternabend+Alter+Kitadauer,data=data1)
> step<-stepAIC(fit,direction="both")

Start:  AIC=-4176.05
gsmt8.20 ~ Austausch + Beteiligung + Elternabend + Alter + Kitadauer


Step:  AIC=-4176.05
gsmt8.20 ~ Austausch + Beteiligung + Alter + Kitadauer


Step:  AIC=-4176.05
gsmt8.20 ~ Austausch + Alter + Kitadauer

              Df Sum of Sq   RSS  AIC
- Alter       1         0     4 -4178.0
- Kitadauer   1         0     4 -4177.7
<none>                        4 -4176.1
- Austausch 908     10184 10188  2418.6