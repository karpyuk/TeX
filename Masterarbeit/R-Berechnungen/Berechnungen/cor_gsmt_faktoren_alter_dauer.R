> library(Hmisc)
> cor.matrix<-cbind(gsmt8.20,Kitadauer,Alter,Beteiligung,Austausch)
> rcorr(cor.matrix)

              gsmt8.20 Kitadauer Alter Beteiligung Austausch
gsmt8.20        1.00     -0.01 -0.02        0.74      0.69
Kitadauer      -0.01      1.00  0.68       -0.04     -0.03
Alter          -0.02      0.68  1.00       -0.04     -0.03
Beteiligung     0.74     -0.04 -0.04        1.00      0.82
Austausch       0.69     -0.03 -0.03        0.82      1.00

n
              gsmt8.20 Kitadauer Alter Beteiligung Austausch
gsmt8.20        2579      2492  2483        2503      2504
Kitadauer       2492      2579  2544        2564      2565
Alter           2483      2544  2579        2555      2555
Beteiligung     2503      2564  2555        2579      2577
Austausch       2504      2565  2555        2577      2579

P
            gsmt8.20 Kitadauer Alter  Beteiligung Austausch
gsmt8.20             0.4588    0.4549 0.0000      0.0000   
Kitadauer   0.4588             0.0000 0.0471      0.1395   
Alter       0.4549   0.0000           0.0600      0.1355   
Beteiligung 0.0000   0.0471    0.0600             0.0000   
Austausch   0.0000   0.1395    0.1355 0.0000               
