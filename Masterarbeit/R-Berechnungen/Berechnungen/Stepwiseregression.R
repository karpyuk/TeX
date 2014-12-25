> data.fuer.reg<-na.omit(data.frame(gsmt8.20,Austausch.vektor.cen,Beteiligung.vektor.cen,Alter,Kitadauer))
> model<-lm(gsmt8.20~Alter+Kitadauer+Austausch.vektor.cen+Beteiligung.vektor.cen,data=data.fuer.reg)
> step<-step(model,direction="both")
> anova()

Start:  AIC=-1889.97
gsmt8.20 ~ Alter + Kitadauer + Austausch.vektor.cen + Beteiligung.vektor.cen

                        Df Sum of Sq    RSS     AIC
- Kitadauer               1     0.151 1146.3 -1891.6
- Alter                   1     0.213 1146.4 -1891.5
<none>                                1146.2 -1890.0
- Austausch.vektor.cen    1    46.953 1193.1 -1792.7
- Beteiligung.vektor.cen  1   248.142 1394.3 -1407.5

Step:  AIC=-1891.64
gsmt8.20 ~ Alter + Austausch.vektor.cen + Beteiligung.vektor.cen

                         Df  Sum of Sq  RSS     AIC
<none>                                1146.3 -1891.6
- Alter                   1     0.978 1147.3 -1891.5
+ Kitadauer               1     0.151 1146.2 -1890.0
- Austausch.vektor.cen    1    46.907 1193.2 -1794.5
- Beteiligung.vektor.cen  1   248.093 1394.4 -1409.3

Call:
  lm(formula = gsmt8.20 ~ Alter + Austausch.vektor.cen + Beteiligung.vektor.cen, 
     data = data.fuer.reg)

Coefficients:
  (Intercept)                 Alter         Austausch.vektor.cen  
      2.77878                 0.01719                 0.01267  
Beteiligung.vektor.cen  
0.02040  

> vol.model<-lm(gsmt8.20~Alter+Kitadauer+Austausch.vektor.cen+Beteiligung.vektor.cen)
> summary(vol.model)$r.squared
[1] 0.564569

> red.model<-lm(gsmt8.20 ~ Alter + Austausch.vektor.cen + Beteiligung.vektor.cen)
> summary(red.model)$r.squared
[1] 0.5651957

# Varianzanalyse für final Modell (red.model):
> model_fin<-lm(gsmt8.20~Alter+Austausch.vektor.cen+Beteiligung.vektor.cen)
> anova(model_fin)

Analysis of Variance Table

Response: gsmt8.20
                          Df  Sum Sq Mean Sq   F value Pr(>F)    
Alter                     1    0.60    0.60    1.2835 0.2574    
Austausch.vektor.cen      1 1244.73 1244.73 2681.5370 <2e-16 ***
Beteiligung.vektor.cen    1  250.47  250.47  539.5949 <2e-16 ***
Residuals              2479 1150.72    0.46                     
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

# Regression für das final Model:
> model_fin<-lm(gsmt8.20~Alter+Austausch.vektor.cen+Beteiligung.vektor.cen)
> summary(model_fin)

Call:
  lm(formula = gsmt8.20 ~ Alter + Austausch.vektor.cen + Beteiligung.vektor.cen)

Residuals:
  Min       1Q   Median       3Q      Max 
-1.93851 -0.52635  0.06486  0.47795  2.02467 

Coefficients:
                      Estimate   Std. Error t value  Pr(>|t|)    
(Intercept)            2.7793505  0.0490662  56.645   <2e-16 ***
Alter                  0.0170897  0.0118247   1.445    0.149    
Austausch.vektor.cen   0.0126227  0.0012581  10.033   <2e-16 ***
Beteiligung.vektor.cen 0.0204619  0.0008809  23.229   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.6813 on 2479 degrees of freedom
(96 observations deleted due to missingness)
Multiple R-squared:  0.5652,  Adjusted R-squared:  0.5647 
F-statistic:  1074 on 3 and 2479 DF,  p-value: < 2.2e-16



# Multiple Regression für das ganze Modell:

> model<-lm(gsmt8.20~Alter+Kitadauer+Austausch.vektor.cen+Beteiligung.vektor.cen)
> anova(model)

Analysis of Variance Table

Response: gsmt8.20
                          Df  Sum Sq Mean Sq   F value Pr(>F)    
Alter                     1    0.58    0.58    1.2401 0.2656    
Kitadauer                 1    0.23    0.23    0.5030 0.4782    
Austausch.vektor.cen      1 1237.15 1237.15 2662.8141 <2e-16 ***
Beteiligung.vektor.cen    1  248.14  248.14  534.0931 <2e-16 ***
Residuals              2467 1146.18    0.46                     
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1