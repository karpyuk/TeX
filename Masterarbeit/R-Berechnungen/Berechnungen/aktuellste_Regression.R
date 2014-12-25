# Zuerst Faktoren in verktoren umwandeln!

> mod1<-lm(Austausch.vektor~Alter+Kitadauer)
> anova(mod1)
Analysis of Variance Table

Response: Austausch.vektor
            Df Sum Sq Mean Sq F value Pr(>F)
Alter        1    808  808.28  2.1619 0.1416
Kitadauer    1    211  211.12  0.5647 0.4525
Residuals 2540 949664  373.88               
> summary(mod1)

Call:
  lm(formula = Austausch.vektor ~ Alter + Kitadauer)

Residuals:
  Min      1Q     Median    3Q     Max 
-55.488 -12.679   1.747  16.311  26.365 

Coefficients:
              Estimate    Std. Error t value Pr(>|t|)    
(Intercept)     57.6173    1.3692   42.081   <2e-16 ***
  Alter        -0.2557     0.4496  -0.569    0.570    
Kitadauer      -0.3620     0.4817  -0.751    0.452    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 19.34 on 2540 degrees of freedom
(36 observations deleted due to missingness)
Multiple R-squared:  0.001072,  Adjusted R-squared:  0.0002857 
F-statistic: 1.363 on 2 and 2540 DF,  p-value: 0.256

> mod2<-lm(Beteiligung.vektor~Alter+Kitadauer)
> anova(mod2)
Analysis of Variance Table

Response: Beteiligung.vektor
            Df  Sum Sq   Mean Sq  F value  Pr(>F)  
Alter        1    2567   2567.21  3.3875 0.06581 .
Kitadauer    1     915    914.91  1.2072 0.27198  
Residuals 2540 1924935  757.85                  
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> summary(mod2)

Call:
  lm(formula = Beteiligung.vektor ~ Alter + Kitadauer)

Residuals:
  Min     1Q Median     3Q    Max 
-86.94 -16.94   1.48  22.59  39.87 

Coefficients:
                Estimate   Std. Error t value Pr(>|t|)    
(Intercept)     89.4692     1.9493   45.897   <2e-16 ***
  Alter         -0.3870     0.6401   -0.605   0.545    
Kitadauer       -0.7535     0.6858  -1.099    0.272    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 27.53 on 2540 degrees of freedom
(36 observations deleted due to missingness)
Multiple R-squared:  0.001806,	Adjusted R-squared:  0.00102 
F-statistic: 2.297 on 2 and 2540 DF,  p-value: 0.1007

> summary(mod1)$r.squared
[1] 0.001072286
> summary(mod2)$r.squared
[1] 0.001805686
>