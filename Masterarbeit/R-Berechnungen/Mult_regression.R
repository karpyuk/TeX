# Multiple Regression:
lm () funktion erfordert data frame.

#Zuerst ist wichtig den Zusammenhang zwischen den Variablen zu untersuchen.

> cor(regression, use="complete")
Alter   Kitadauer Austausch.vektor Beteiligung.vektor
Alter               1.00000000  0.67917287      -0.02993453        -0.04105292
Kitadauer           0.67917287  1.00000000      -0.03310067        -0.04877561
Austausch.vektor   -0.02993453 -0.03310067       1.00000000         0.77872360
Beteiligung.vektor -0.04105292 -0.04877561       0.77872360         1.00000000

> fit<-lm(Austausch.vektor~Kitadauer+Alter, data=newdata)
> summary(fit)

Call:
  lm(formula = Austausch.vektor ~ Kitadauer + Alter, data = newdata)

Residuals:
  Min       1Q   Median       3Q      Max 
-21.1367  -4.9678   0.4974   5.7788   9.5818 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 22.54518    0.50234  44.880   <2e-16 ***
Kitadauer   -0.15505    0.17672  -0.877    0.380    
Alter       -0.08447    0.16495  -0.512    0.609    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 7.094 on 2540 degrees of freedom
(36 observations deleted due to missingness)
Multiple R-squared:  0.001199,  Adjusted R-squared:  0.0004123 
F-statistic: 1.524 on 2 and 2540 DF,  p-value: 0.218

> fit1<-lm(Beteiligung.vektor~Kitadauer+Alter, data=newdata)
> summary(fit1)

Call:
  lm(formula = Beteiligung.vektor ~ Kitadauer + Alter, data = newdata)

Residuals:
  Min       1Q   Median       3Q      Max 
-21.4677  -3.5383   0.5323   4.8173   8.4617 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 22.82716    0.41645  54.813   <2e-16 ***
Kitadauer   -0.21045    0.14651  -1.436    0.151    
Alter       -0.07452    0.13675  -0.545    0.586    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 5.881 on 2540 degrees of freedom
(36 observations deleted due to missingness)
Multiple R-squared:  0.002496,  Adjusted R-squared:  0.00171 
F-statistic: 3.177 on 2 and 2540 DF,  p-value: 0.04186

#Überprüfung der Wechselwirkung zwischen zwei Prädiktoren
> fit<-lm(Austausch.vektor~Kitadauer+Alter+Kitadauer:Alter, data=newdata)
> summary(fit)

Call:
  lm(formula = Austausch.vektor ~ Kitadauer + Alter + Kitadauer:Alter, 
     data = newdata)

Residuals:
  Min       1Q   Median       3Q      Max 
-21.3783  -4.7510   0.4104   5.6915  10.1991 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)        25.5008     1.1415  22.340  < 2e-16 ***
  Kitadauer        -2.0043     0.6654  -3.012  0.00262 ** 
  Alter            -0.7779     0.2916  -2.668  0.00768 ** 
  Kitadauer:Alter   0.4052     0.1406   2.882  0.00398 ** 
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 7.084 on 2539 degrees of freedom
(36 observations deleted due to missingness)
Multiple R-squared:  0.004456,  Adjusted R-squared:  0.00328 
F-statistic: 3.789 on 3 and 2539 DF,  p-value: 0.01001

#Regression diagnostics
> fit<-lm(Austausch.vektor~Kitadauer+Alter, data=newdata)
> confint(fit)
                2.5 %     97.5 %
(Intercept) 21.5601420 23.5302260
Kitadauer   -0.5015892  0.1914849
Alter       -0.4079234  0.2389816

# Regression Kitadauer und Alter unabhängig von einader betrachtet

> fit<-lm(Beteiligung.vektor~Kitadauer, data=newdata)
> summary(fit)

Call:
  lm(formula = Beteiligung.vektor ~ Kitadauer, data = newdata)

Residuals:
  Min       1Q   Median       3Q      Max 
-21.3895  -3.6158   0.6105   4.8684   8.3842 

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept)  22.6474     0.2710  83.570   <2e-16 ***
Kitadauer    -0.2579     0.1072  -2.406   0.0162 *  
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 5.883 on 2562 degrees of freedom
(15 observations deleted due to missingness)
Multiple R-squared:  0.002254,  Adjusted R-squared:  0.001864 
F-statistic: 5.787 on 1 and 2562 DF,  p-value: 0.01622

> fit<-lm(Beteiligung.vektor~Alter, data=newdata)
> summary(fit)

Call:
  lm(formula = Beteiligung.vektor ~ Alter, data = newdata)

Residuals:
  Min       1Q   Median       3Q      Max 
-21.4668  -3.6185   0.5332   4.7453   8.3815 

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept)  22.8909     0.4149  55.175   <2e-16 ***
  Alter      -0.2121     0.1002  -2.115   0.0345 *  
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 5.884 on 2553 degrees of freedom
(24 observations deleted due to missingness)
Multiple R-squared:  0.00175,	Adjusted R-squared:  0.001359 
F-statistic: 4.475 on 1 and 2553 DF,  p-value: 0.0345

> fit<-lm(Austausch.vektor~Alter, data=newdata)
> summary(fit)

Call:
  lm(formula = Austausch.vektor ~ Alter, data = newdata)

Residuals:
  Min       1Q   Median       3Q      Max 
-21.0374  -4.8516   0.5201   5.7768   9.5201 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)  22.5949     0.5003  45.160   <2e-16 ***
  Alter        -0.1858     0.1209  -1.537    0.124    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 7.096 on 2553 degrees of freedom
(24 observations deleted due to missingness)
Multiple R-squared:  0.0009245,	Adjusted R-squared:  0.0005332 
F-statistic: 2.362 on 1 and 2553 DF,  p-value: 0.1244

> fit<-lm(Austausch.vektor~Kitadauer, data=newdata)
> summary(fit)

Call:
  lm(formula = Austausch.vektor ~ Kitadauer, data = newdata)

Residuals:
  Min       1Q   Median       3Q      Max 
-21.1254  -4.9177   0.4977   5.8746   9.4977 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)  22.3332     0.3270  68.295   <2e-16 ***
  Kitadauer    -0.2077     0.1294  -1.605    0.109    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 7.1 on 2563 degrees of freedom
(14 observations deleted due to missingness)
Multiple R-squared:  0.001005,	Adjusted R-squared:  0.0006147 
F-statistic: 2.577 on 1 and 2563 DF,  p-value: 0.1085

#Berechnung der standardisierten Regressionskoeffizienten (Beta)
> lm(scale(Austausch.vektor)~scale(Kitadauer)+scale(Alter),data=mydata)

Call:
  lm(formula = scale(Austausch.vektor) ~ scale(Kitadauer) + scale(Alter), 
     data = mydata)

Coefficients:
  (Intercept)  scale(Kitadauer)      scale(Alter)  
-0.0008824        -0.0236549        -0.0138099  

> 