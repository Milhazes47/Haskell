
textual,lh,lt :: Int -> String



dozens=["twenty","thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
units=["one","two", "three","four", "five", "six", "seven", "eight","nine" ,"ten"]
teens=["ten", "teens","twelve", "thirteen","fourteen", "fifteen","sixteen", "seventeen","eighteen", "nineteen"]
lh x
    |x<=9 = units!! (x-1)
    |x<20 && x>9 =teens!! mod x 10
    |20<=x = dozens!!(div x 10 -2)  ++ " " ++  (units!! (mod x 10 -1))
    

lt x = units!! (x-1) ++ " " ++ "hundred" ++ " and "

textual x
    |x<100 = lh x
    |x<1000 && x>=100 = lt(div x 100)  ++ textual(mod x 100)
    |1000<=x && x<10000 = units!! (div x 1000 -1)  ++ " thousand " ++ textual(mod x 1000)
    |10000<=x && x<100000 = lh (div x 1000)  ++ " thousand " ++ textual(mod x 1000)
    |100000<=x && x<1000000 = textual (div x 1000) ++ " thousand " ++ textual (mod x 1000)
    |otherwise = "over a million :)"