> cor(Kitadauer,Alter, use="complete")
[1] 0.6784688
> cor(Kitadauer,mydata$Zusammenarbeit.vektor, use="complete")
[1] -0.03461351
> cor(Alter,mydata$Zusammenarbeit.vektor, use="complete")
[1] -0.03277468

#Alter
P
x      y     
x        0.0977
y 0.0977   

#Kitadauer
P
x      y     
x        0.0797
y 0.0797 
#zuerst Variable in ein vektor konventieren
> mydata$ZUsammenarbeit.vektor<-as.numeric(mydata$Zusammenarbeit)

#nicht standardisierte Koeffizienten
> fit<-lm(mydata$Zusammenarbeit.vektor~Kitadauer+Alter, data=mydata)
> fit

Call:
  lm(formula = mydata$Zusammenarbeit.vektor ~ Kitadauer + Alter, 
     data = mydata)

Coefficients:
  (Intercept)    Kitadauer        Alter  
3.265403    -0.016653    -0.008845  

> summary(fit)

Call:
  lm(formula = mydata$Zusammenarbeit.vektor ~ Kitadauer + Alter, 
     data = mydata)

Residuals:
  Min      1Q  Median      3Q     Max 
-2.2311 -0.2222 -0.1801  0.7866  0.8543 

Coefficients:
               Estimate Std. Error t value Pr(>|t|)    
  (Intercept)  3.265403   0.049778  65.599   <2e-16 ***
  Kitadauer   -0.016653   0.017512  -0.951    0.342    
  Alter       -0.008845   0.016345  -0.541    0.588    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.703 on 2540 degrees of freedom
(36 observations deleted due to missingness)
Multiple R-squared:  0.001384,  Adjusted R-squared:  0.0005975 
F-statistic:  1.76 on 2 and 2540 DF,  p-value: 0.1723

#Standardisierte Koeffizienten
> fit<-lm(scale(mydata$Zusammenarbeit.vektor)~scale(Kitadauer)+scale(Alter),data=mydata)
> summary(fit)

Call:
  lm(formula = scale(mydata$Zusammenarbeit.vektor) ~ scale(Kitadauer) + 
       scale(Alter), data = mydata)

Residuals:
  Min      1Q  Median      3Q     Max 
-3.1758 -0.3163 -0.2563  1.1197  1.2160 

Coefficients:
                  Estimate Std. Error t value Pr(>|t|)
(Intercept)      -0.001318   0.019844  -0.066    0.947
scale(Kitadauer) -0.025690   0.027015  -0.951    0.342
scale(Alter)     -0.014623   0.027021  -0.541    0.588

Residual standard error: 1.001 on 2540 degrees of freedom
(36 observations deleted due to missingness)
Multiple R-squared:  0.001384,  Adjusted R-squared:  0.0005975 
F-statistic:  1.76 on 2 and 2540 DF,  p-value: 0.1723

#Ausgabe der Beta-Koeffizienten
> lm(scale(mydata$Zusammenarbeit.vektor)~scale(Kitadauer)+scale(Alter),data=mydata)

Call:
  lm(formula = scale(mydata$Zusammenarbeit.vektor) ~ scale(Kitadauer) + 
       scale(Alter), data = mydata)

Coefficients:
  (Intercept)   scale(Kitadauer)      scale(Alter)  
-0.001318         -0.025690            -0.014623

#Multikollinarität Toleranz
> vif(mult.reg)
Kitadauer     Alter 
1.856237  1.856237 

> 1/vif(mult.reg)
Kitadauer     Alter 
0.5387242 0.5387242 

#für jeden Prädiktor einzeln Regression
#Besuchsdauer
> fit<-lm(mydata$ZUsammenarbeit.vektor~Kitadauer, data=mydata)
> summary(fit)

Call:
  lm(formula = mydata$ZUsammenarbeit.vektor ~ Kitadauer, data = mydata)

Residuals:
  Min      1Q  Median      3Q     Max 
-2.2222 -0.2222 -0.1773  0.7778  0.8452 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)  3.24462    0.03235 100.286   <2e-16 ***
  Kitadauer   -0.02245    0.01280  -1.753   0.0797 .  
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.7024 on 2563 degrees of freedom
(14 observations deleted due to missingness)
Multiple R-squared:  0.001198,  Adjusted R-squared:  0.0008084 
F-statistic: 3.074 on 1 and 2563 DF,  p-value: 0.07965

#Alter
> fit<-lm(mydata$ZUsammenarbeit.vektor~Alter, data=mydata)
> fit(summary)
Fehler: konnte Funktion "fit" nicht finden
> summary(fit)

Call:
  lm(formula = mydata$ZUsammenarbeit.vektor ~ Alter, data = mydata)

Residuals:
  Min      1Q  Median      3Q     Max 
-2.2313 -0.2115 -0.1718  0.7885  0.8481 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)  3.27099    0.04956  66.002   <2e-16 ***
  Alter       -0.01984    0.01198  -1.657   0.0977 .  
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.7029 on 2553 degrees of freedom
(24 observations deleted due to missingness)
Multiple R-squared:  0.001074,  Adjusted R-squared:  0.0006829 
F-statistic: 2.745 on 1 and 2553 DF,  p-value: 0.09766


