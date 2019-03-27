--lista 3 27/03

--ex1
add10toall :: [Int] -> [Int]
add10toall xs = [x+10 | x <- xs]

--ex2
multN :: Int -> [Int] -> [Int]
multN n xs = [x*n | x <- xs]

--ex3
applyExpr :: [Int] -> [Int]
applyExpr xs = [3*x+2 | x <- xs]

--ex4
addSufix :: String -> [String] -> [String]
addSufix str xs = [x ++ str | x <- xs]

--ex5
selectgt5 :: [Int] -> [Int]
selectgt5 xs = [x | x <- xs, x>5]

--ex6
sumOdds :: [Int] -> Int
sumOdds xs = sum [x | x <- xs , odd x]

--ex7
selectExpr :: [Int] -> [Int]
selectExpr xs = [x | x <- xs, even x, x > 20, x < 50]

--ex8
countShorts :: [String] -> Int
countShorts xs = length [x | x <- xs , length x < 5]

--ex9
calcExpr :: [Float] -> [Float]
calcExpr xs = [y | y <- [x^2/2 | x <- xs], y > 10]

--ex10
trSpaces :: String -> String
trSpaces xs = [if x == ' ' then '-' else x | x <- xs]

--ex12
selectSnd :: [(Int, Int)] -> [Int]
selectSnd xs = [snd x |x <- xs]

--ex13
dotProd :: [Int] -> [Int] -> Int
dotProd lis1 lis2 = sum [fst x * snd x | x <- (zip lis1 lis2)]

--ex14
genRects :: Int -> (Int, Int) -> (Float, Float, Float, Float)
genRects n t = [()]
