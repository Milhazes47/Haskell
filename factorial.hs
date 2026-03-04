factorial ,fibonnaci:: Int -> Int



factorial x = if x<2 then 1 else x* factorial(x-1)

fibonnaci x
    |x==0 = 0
    |x==1 = 1
    |otherwise = fibonnaci(x-1) + fibonnaci(x-2)