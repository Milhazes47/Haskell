occur ::  Int -> Int -> Int
toL :: Integral x => x -> [x]


occur y find = length xs
    where xs = [xs | xs <- ys , xs==find]
          ys= toL y



toL 0 = []
toL z = toL(div z 10) ++ [mod z 10]  
