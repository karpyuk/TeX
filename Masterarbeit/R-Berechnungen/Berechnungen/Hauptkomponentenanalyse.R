> principal(mydata)
Principal Components Analysis
Call: principal(r = mydata)
Standardized loadings (pattern matrix) based upon correlation matrix
          PC1   h2   u2
gespr8.1 0.76 0.58 0.42
anspr8.2 0.75 0.56 0.44
ofohr8.3 0.66 0.44 0.56
austs8.4 0.79 0.63 0.37
infrm8.5 0.77 0.59 0.41
etwgs8.6 0.73 0.53 0.47
ptner8.7 0.73 0.53 0.47
ausef8.8 0.81 0.66 0.34
auflt8.9 0.52 0.27 0.73
mitw8.10 0.71 0.50 0.50
eamt8.11 0.55 0.30 0.70
hosp8.12 0.71 0.50 0.50
pdar8.13 0.78 0.61 0.39
eins8.14 0.82 0.68 0.32
besw8.15 0.77 0.59 0.41
ents8.16 0.75 0.57 0.43
eazf8.17 0.75 0.56 0.44
ifpd8.18 0.73 0.54 0.46
betl8.19 0.70 0.50 0.50

                PC1
SS loadings    10.15
Proportion Var  0.53

Test of the hypothesis that 1 component is sufficient.

The degrees of freedom for the null model are  171  and the objective function was  13.39
The degrees of freedom for the model are 152  and the objective function was  2.57 
The total number of observations was  2579  with MLE Chi Square =  6597.21  with prob <  0 

Fit based upon off diagonal values = 0.98

#FA mit 2 extrahierten Hauptkomponenten

> principal(mydata, nfactors=2)
Principal Components Analysis
Call: principal(r = mydata, nfactors = 2)
Standardized loadings (pattern matrix) based upon correlation matrix
          RC1  RC2   h2   u2
gespr8.1 0.79 0.26 0.69 0.31
anspr8.2 0.72 0.31 0.62 0.38
ofohr8.3 0.42 0.53 0.46 0.54
austs8.4 0.78 0.32 0.71 0.29
infrm8.5 0.81 0.25 0.71 0.29
etwgs8.6 0.73 0.27 0.61 0.39
ptner8.7 0.72 0.28 0.60 0.40
ausef8.8 0.79 0.33 0.73 0.27
auflt8.9 0.36 0.38 0.27 0.73
mitw8.10 0.28 0.75 0.65 0.35
eamt8.11 0.06 0.77 0.59 0.41
hosp8.12 0.33 0.69 0.59 0.41
pdar8.13 0.56 0.54 0.61 0.39
eins8.14 0.64 0.52 0.68 0.32
besw8.15 0.58 0.51 0.59 0.41
ents8.16 0.49 0.59 0.58 0.42
eazf8.17 0.41 0.67 0.62 0.38
ifpd8.18 0.40 0.66 0.59 0.41
betl8.19 0.32 0.70 0.60 0.40

                      RC1  RC2
SS loadings           6.31 5.19
Proportion Var        0.33 0.27
Cumulative Var        0.33 0.61
Proportion Explained  0.55 0.45
Cumulative Proportion 0.55 1.00

Test of the hypothesis that 2 components are sufficient.

The degrees of freedom for the null model are  171  and the objective function was  13.39
The degrees of freedom for the model are 134  and the objective function was  1.85 
The total number of observations was  2579  with MLE Chi Square =  4761.43  with prob <  0 

Fit based upon off diagonal values = 0.99

# Rotation--> muss zuerst das Paket (GPArotaion) geladen werden
> fa.pc<-principal(mydata, 2, fm="pc", rotate="promax")
> print(fa.pc$loadings, digits=2, cutoff=.3, sort=TRUE)

Principal Components Analysis
Call: principal(r = mydata, nfactors = 2, rotate = "promax", fm = "pc")
Standardized loadings (pattern matrix) based upon correlation matrix

item           PC1   PC2   h2   u2
infrm8.5    5  0.93 -0.12 0.71 0.29
gespr8.1    1  0.90 -0.10 0.69 0.31
ausef8.8    8  0.85  0.00 0.73 0.27
austs8.4    4  0.85 -0.01 0.71 0.29
etwgs8.6    6  0.81 -0.04 0.61 0.39
ptner8.7    7  0.79 -0.02 0.60 0.40
anspr8.2    2  0.78  0.02 0.62 0.38
eins8.14   14  0.54  0.34 0.68 0.32
besw8.15   15  0.47  0.36 0.59 0.41
eamt8.11   11 -0.39  1.00 0.59 0.41
mitw8.10   10 -0.08  0.86 0.65 0.35
betl8.19   19  0.00  0.77 0.60 0.40
hosp8.12   12  0.02  0.75 0.59 0.41
eazf8.17   17  0.15  0.67 0.62 0.38
ifpd8.18   18  0.13  0.66 0.59 0.41
ents8.16   16  0.29  0.52 0.58 0.42
ofohr8.3    3  0.24  0.48 0.46 0.54
pdar8.13   13  0.42  0.42 0.61 0.39
auflt8.9    9  0.25  0.31 0.27 0.73

                      PC1  PC2
SS loadings           6.37 5.13   # Eigenwerte: enthält die quadrierten und aufsummierten Ladungen der
                                    einzelnen Faktoren sowie Angaben, wie viel Prozent der Gesamtva�
                                    rianz durch die einzelnen Faktoren erklärt wird. 

Proportion Var        0.34 0.27   # gibt die Varianzaufklärung jedes einzelnen Faktors wieder
                            
Cumulative Var        0.34 0.61   # Hier kann man erkennen, dass 61 % der Varianz aller Variablen
                                    durch die 2 Faktoren zusammen erklaert werden.

Proportion Explained  0.55 0.45
Cumulative Proportion 0.55 1.00

With component correlations of 
    PC1  PC2
PC1 1.00 0.73  # man sieht, dass die Faktoren hoch miteinander korrelieren
PC2 0.73 1.00

#Beurteilung der Modellgüte

Test of the hypothesis that 2 components are sufficient.

The degrees of freedom for the null model are 171 and the objective function was 13.39 0.3
The degrees of freedom for the model are 134 and the objective function was 1.85 0.3
The total number of observations (Stichprobe) was 2579 with MLE Chi Square = 4761.43  with prob (p) <  00.3   # drückt aus, wie stark die durch unser 
                                                                                                                Fakto�renmodell angenommene Kovarianzstruktu
                                                                                                                von der tatsächlich beobachteten Kovarianzstruktur abweicht. 
                                                                                                                Je größer die Abweichung ist, desto größer ist der chi2-Wert.
  
Fit based upon off diagonal values = 0.99    # Dieser Wert drückt aus, wie gut die
                                              beobachteten Korrelationen zwischen den Variablen 
                                              durch die Faktoren erklärt werden können.
 

#???? warum sind die loadings hier anders als bei mir mit der Funktion: print(fa.pc, digits=2, cutoff=.3, sort=TRUE)?
> print(fa.pc$loadings, digits=2, cutoff=.3)

Loadings:
          PC1   PC2  
gespr8.1  0.90      
anspr8.2  0.78      
ofohr8.3        0.48
austs8.4  0.85      
infrm8.5  0.93      
etwgs8.6  0.81      
ptner8.7  0.79      
ausef8.8  0.85      
auflt8.9        0.31
mitw8.10        0.86
eamt8.11 -0.39  1.00
hosp8.12        0.75
pdar8.13  0.42  0.42
eins8.14  0.54  0.34
besw8.15  0.47  0.36
ents8.16        0.52
eazf8.17        0.67
ifpd8.18        0.66
betl8.19        0.77

                PC1  PC2
SS loadings    6.10 4.85
Proportion Var 0.32 0.26
Cumulative Var 0.32 0.58