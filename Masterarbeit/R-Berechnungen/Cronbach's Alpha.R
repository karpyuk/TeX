Cronbachs Alpha
> Paket laden: (CTT)
> reliability(mydata, itemal=TRUE)--> berechnet die Reliabilität mit allen Fällen
> reliability(mydata, itemal=TRUE, NA.Delete=FALSE)--> ersetzt alle Na's auf 0'


>str(reliability(mydata,itemal=TRUE))
List of 9
$ nItem         : int 19
$ nPerson       : int 2579
$ alpha         : num 0.899
$ scaleMean     : num 54.1
$ scaleSD       : num 13.7
$ alphaIfDeleted: num [1:19(1d)] 0.894 0.895 0.895 0.894 0.892 ...
$ pBis          : num [1:19(1d)] 0.585 0.549 0.486 0.599 0.612 ...
$ bis           : num [1:19(1d)] 0.631 0.616 0.576 0.692 0.645 ...
$ itemMean      : Named num [1:19] 3.18 3.36 3.22 3.43 2.96 ...
..- attr(*, "names")= chr [1:19] "gespr8.1" "anspr8.2" "ofohr8.3" "austs8.4" ...
- attr(*, "class")= chr "reliability"

Value

nItem:  The number of items

nPerson:  The sample size used in calculating the values

alpha:	Crobach's alpha

scaleMean:	Average total sum socre

scaleSD:	Standard deviation of total sum score

alphaIfDeleted:	Cronbach's alpha if the corresponding item were deleted

pBis:	The item total correlation, with the item's contribution removed from the total

bis:	The item total biserial (or polyserial) correlation, with the item's contribution removed from the total'

itemMean:	Average of each item

> reliability(mydata[1:19])$alphaIfDeleted
> round(reliability(mydata[1:19])$alphaIfDeleted,3)

[1] 0.894 0.895 0.895 0.894 0.892 0.895 0.892 0.892 0.896 0.892 0.900 0.897
[13] 0.892 0.893 0.894 0.892 0.893 0.893 0.894

> round(reliability(mydata[,c("gespr8.1","anspr8.2","austs8.4","infrm8.5","etwgs8.6","ptner8.7","ausef8.8","eins8.14")])$alphaIfDeleted,3)
[1] 0.925 0.928 0.926 0.923 0.929 0.927 0.921 0.928

> round(reliability(mydata[,c("ofohr8.3","auflt8.9","mitw8.10","eamt8.11","hosp8.12","pdar8.13","besw8.15","ents8.16","eazf8.17","ifpd8.18","betl8.19")])$alphaIfDeleted,3)
 [1] 0.916 0.924 0.912 0.918 0.914 0.912 0.913 0.912 0.911 0.913 0.913