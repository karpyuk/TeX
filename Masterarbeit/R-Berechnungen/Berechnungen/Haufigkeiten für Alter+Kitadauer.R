#häufigketen
table(Alter)
Alter
1   2   3   4   5   6 
10 346 545 574 965 116 

> round(100*prop.table (table (Alter)), 1)
Alter
1    2    3    4    5    6 
0.4 13.5 21.3 22.5 37.8  4.5 

> round(100*prop.table (table (Kitadauer)), 1)
Kitadauer
1    2    3    4 
30.3 29.3 22.1 18.2 