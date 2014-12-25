#Multiple Regression:
Vor der Regression müssen variablen standardisiert sein.
in R werden die standardisierten Koeffizienten nicht automatisch ausgegeben!
Dafür muss man Variablen im Regressionsmodell standardisieren.
>lm(scale(lz.1)~scale(zuf.inh.1)). Vor der Tilde steht AV, nach der Tilde - UV.

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

> model1<-lm(gsmt8.20~Alter)
> AIC(model1)
[1] 13896.03
> model2<-lm(gsmt8.20~Kitadauer)
> model2<-lm(gsmt8.20~Alter+Kitadauer)
> AIC(model2)
[1] 13846.67
> model3<-lm(gsmt8.20~Alter+Kitadauer+Austausch)
> AIC(model3)
[1] -1134.685
> model4<-lm(gsmt8.20~Alter+Kitadauer+Austausch+Elternabend)
> AIC(model4)
[1] -1134.685
> model5<-lm(gsmt8.20~Alter+Kitadauer+Austausch+Elternabend+Beteiligung)
> AIC(model5)
[1] -1134.685

#Hierarchische Regression:
> data.fuer.reg<-na.omit(data.frame(gsmt8.20,Austausch,Beteiligung,Elternabend,Alter,Kitadauer))
> nrow(data.fuer.reg)
[1] 1071
> red.model<-lm(gsmt8.20~Alter+Kitadauer+Austausch+Beteiligung+Elternabend,data=data.fuer.reg)
> red.model<-lm(gsmt8.20~Kitadauer+Alter,data=data.fuer.reg)
> summary(red.model)$r.squared
[1] 0.0009131721
> vol.model<-lm(gsmt8.20~Alter+Kitadauer+Austausch+Beteiligung+Elternabend,data=data.fuer.reg)
> summary(vol.model)$rsquared
NULL
> summary(vol.model)$r.squared
[1] 0.9996118
> summary(vol.model)$r.squared-summary(red.model)$r.squared
[1] 0.9986986
> anova(red.model,vol.model)
Analysis of Variance Table

Model 1: gsmt8.20 ~ Kitadauer + Alter
Model 2: gsmt8.20 ~ Alter + Kitadauer + Austausch + Beteiligung + Elternabend
Res.Df   RSS  Df Sum of Sq      F    Pr(>F)    
1   1068 10188                                   
2    160     4 908     10184 453.32 < 2.2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Zuwachs in R² ist sig. mit F(908,160)=453.32,p<.000
d.h.das vollständige Modell erklärt sig. mehr Varianz als das reduzierte.
die 3 Prädiktoren haben zusammen einen sig. Effekt auf die Kriteriumsvariable.<-