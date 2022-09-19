-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.

f1 :: Float -> Float -> Float -> Float
f1 x y z = x ** (y/z)

f2 :: Float -> Float -> Float -> Float
f2 x y z = sqrt (x/y - z)

f3 :: Char -> [Char] -> [Char] -> [Char]
f3 x y z = x:(show y ++ z)

f4 :: Bool -> Bool -> Bool -> [Bool]
f4 x y z = [x > y] ++ [z]

f5 :: [Float] -> [Float] -> [Float] -> Bool
f5 x y z = x == (y ++ z)

-- Question 2
-- Are really all variables in Haskell immutable? Try googling for the answer.
    --  Yes

-- Question 3
-- Why should we define type signatures of functions? How can they help you? How can they help others?
    --  It help to understand the code a later date, and help for others to understand it.

-- Question 4
-- Why should you define type signatures for variables? How can they help you?
    --  It dont allow inputs, that isnt compatible with the function.


-- Question 5
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.
    -- fromIntegral

-- Question 6
-- How would you write the prod function from our lesson so that it works for Int and Double? Does the code compile?

prod :: Num a => a -> a -> a
prod x y = x * y

-- Question 7
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner
-- most elements?
    -- I think we dont saw any example. Like down it will print the 1st list 2nd element aka 2.
listInList = [[1,2],[3,4]] !! 0 !! 1