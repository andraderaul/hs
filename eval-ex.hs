ex :: Double -> Double 
ex x =  sum [ x**i / ( product [1..i] ) | i<-[0..9] ] 
