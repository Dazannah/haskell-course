-- Question 1
-- Lets say you have the nested values defined bellow. How would you get the value of
-- 4 by using only pattern matching in a function?

nested :: [([Int], [Int])]
nested = [([1,2],[3,4]), ([5,6],[7,8])]

get4 :: [([Int], [Int])] -> String
get4 [(_,[_,x]), (_,_)] = show x
get4 _ = "Error"

-- Question 2
-- Write a function that takes a list of elements of any type and, if the list has 3 or more elements, it
-- removes them. Else, it does nothing. Do it two times, one with multiple function definitions and one with
-- case expressions.

q2 :: [a] -> [a]
q2 (_:_:_:b) = b
q2 c = c

q2' :: [a] -> [a]
q2' d = case d of
    (_:_:_:d) -> d
    _ -> d

-- Question 3
-- Create a function that takes a 3-element tuple (all of type Integer) and adds them together

q3 :: (Int,Int,Int) -> Int
q3 (a,b,c) = a+b+c

-- Question 4
-- Implement a function that returns True if a list is empty and False otherwise.

q4 :: [a] -> Bool
q4 [] = True
q4 (x:rest) = False

-- Question 5
-- Write the implementation of the tail function using pattern matching. But, instead of failing if
-- the list is empty, return an empty list.

q5 :: [a]-> [a]
q5 (x:rest) = tail (x:rest)
q5 [] = []

-- Question 6
-- write a case expression wrapped in a function that takes an Int and adds one if it's even. Otherwise does nothing. 
-- (Use the `even` function to check if the number is even.)

q6 :: Int -> Int
q6 a = case even a of
    True -> a + 1
    False -> a
