# Variaben z-Standardisieren:
>scale()

> library(MASS)
> data.fuer.reg<-na.omit(data.frame(gsmt8.20,Austausch,Beteiligung,Alter,Kitadauer))
> red.model<-lm(gsmt8.20~Alter+Kitadauer+Austausch+Beteiligung,data=data.fuer.reg)
> step<-stepAIC(red.model,direction="both")
> step$anova

Start:  AIC=-4176.05
gsmt8.20 ~ Alter + Kitadauer + Austausch + Beteiligung + Elternabend


Step:  AIC=-4176.05
gsmt8.20 ~ Alter + Kitadauer + Austausch + Beteiligung


Step:  AIC=-4176.05
gsmt8.20 ~ Alter + Kitadauer + Austausch

              Df Sum of Sq   RSS     AIC
- Alter       1         0     4 -4178.0
- Kitadauer   1         0     4 -4177.7
<none>                        4 -4176.1
- Austausch 908     10184 10188  2418.6

Step:  AIC=-4177.99
gsmt8.20 ~ Kitadauer + Austausch

              Df Sum of Sq   RSS  AIC
- Kitadauer   1         0     4 -4179.1
<none>                        4 -4178.0
+ Alter       1         0     4 -4176.1
- Austausch 908     10186 10190  2416.8

Step:  AIC=-4179.1
gsmt8.20 ~ Austausch

              Df Sum of Sq   RSS     AIC
<none>                        4 -4179.1
+ Kitadauer   1         0     4 -4178.0
+ Alter       1         0     4 -4177.7
- Austausch 908     10193 10197  2415.5

> step$anova
Stepwise Model Path 
Analysis of Deviance Table

Initial Model:
  gsmt8.20 ~ Alter + Kitadauer + Austausch + Beteiligung + Elternabend

Final Model:
  gsmt8.20 ~ Austausch


              Step Df Deviance Resid. Df Resid. Dev       AIC
1                                     160   3.958744 -4176.051
2 - Elternabend  0 0.0000000000       160   3.958744 -4176.051
3 - Beteiligung  0 0.0000000000       160   3.958744 -4176.051
4       - Alter  1 0.0002167437       161   3.958961 -4177.992
5   - Kitadauer  1 0.0033029417       162   3.962264 -4179.099