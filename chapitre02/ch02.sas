proc import datafile="/folders/myfolders/chapitre02.xls"
out=df
dbms=xls
replace
;
getnames=yes;
run;

proc reg data=work.df;

model txi7098=txs7098;
run;

