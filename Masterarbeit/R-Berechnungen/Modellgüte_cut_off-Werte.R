# Modellüberprüfung
Goodness-of-Fit-Index (GFI): zeigt an, wie viel Varianz der Gesamtvarianz
durch ein Modell aufgeklärt werden kann.
Ein hoher Wert steht für einen guten Modell-Fit.
(RMSEA): zeigt wie schlecht ein Modell die Daten beschreibt. Ein hoher Wert
steht für einen schlechten Modell-Fit.
(CFI):der Wertebereich liegt in der Regel zwischen 0 und 1. Je höher der Wert ausfällt
desto besser ist der Modell-Fit. Vorteile des CFI sind vor allem die geringe Sensitivität gegenüber 
Stichprobenumfangen und die Robustheit gegenuber der Verletzung der Verteilungsannahme.
Empfohlen werden CFI, RMSEA, x²-Wert und SRMR auszugeben. 
Ein gutes Modell liegt unterhalb oder um die angegeben Cut-off-Werte für den RMSEA und 
den SRMR sowie über bzw. um den CFI-Wert.

#Cut-off-Werte
N>250: RMSEA < oder = .06
N<250: RMSEA < oder = .08
RMSEA verwirfft bei kleinen Stichproben zu oft richtige Modelle, daher bei
N<250 RMSEA=.08 ausreichend.
Nullhypothese kann beibehalten werden, wenn die untere
Intervallgrenze des 90%-Konfidenzintervalls kleiner als 0.05 ist. 

SRMR< oder = .11 geringe Sensivität gegen der Stichprobengröße

CFI: .95, maximalwert=1
TLI: .95, maximalwert>1
BIC: Je kleiner der Wert, desto besser das Modell.
RMSR: soll nahe 0 liegen. Siehe RMSEA.

#Wie interpretieren?
> you should report the percentage of variance that each factor expains ans 
possibly the eigenvalue too. 
> If the oblique rotation was used, you should consider reporting a table of both
the structure and pattern matrix because the loadings in these tables
have different interpretations.
>If you di remove Items, rerun your factor analysis to check that the factor
structure still holds!

#Interpretation der Regression
Deswegen es müssen andere Variablen sein, die einen einfluss auf das Alter
und Kitadauer haben.