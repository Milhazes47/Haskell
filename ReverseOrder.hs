reverseL ::  Eq a => [a] -> [a]



reverseL []= []

reverseL (x:xs) = reverseL xs ++ [x]
        