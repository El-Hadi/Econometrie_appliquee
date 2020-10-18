import excel "/home/hadi/Téléchargements/chapitre02.xls", firstrow clear

'Problème 2.1

 
tw  (lfit txi7098 txs7098)  (scatter txi7098 txs7098)
reg txi7098 txs7098

test (txs7098=1)

preserve

keep in 1/15

reg txi7098 txs7098

restore

reg txi7079 txs7079

reg txi8089 txs8089

reg txi9098 txs9098

reg txi7074 txs7074
