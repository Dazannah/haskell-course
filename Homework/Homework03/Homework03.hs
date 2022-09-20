-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).

monthlyConsumption :: Float -> Float -> Float -> String
monthlyConsumption k h m
    | monthlyUsage > m = "The monthly consumption is bigger than the maximum allowed!"
    | monthlyUsage == m = "The monthly consumption is equal with the maximum allowed!"
    | monthlyUsage < m = "The monthly consumption is smaller than the maximum allowed!"
    | otherwise = "Please enter consumption, daly usage in hours and maximum allowed monthly consumption"
    where
        monthlyUsage = k*h*30

-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.

monthlyConsumption2 :: Float -> Float -> Float -> String
monthlyConsumption2 k h m
    | monthlyUsage > m = "The monthly consumption is bigger than the maximum allowed! The excess: " ++ show(monthlyUsage - m) ++ "kWH"
    | monthlyUsage == m = "The monthly consumption is equal with the maximum allowed!"
    | monthlyUsage < m = "The monthly consumption is smaller than the maximum allowed! The savings: " ++ show(m - monthlyUsage) ++ "kWH"
    | otherwise = "Please enter consumption, daly usage in hours and maximum allowed monthly consumption"
    where
        monthlyUsage = k*h*30


-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.

fuelConsumption :: Float -> Float -> String
fuelConsumption a b =
    let aCar = a*0.1 + b*0.05
        bCar = a*0.07 + b*0.08
        cCar = a*0.06 + b*0.11
    in  show(aCar + bCar + cCar) ++ " L fuel consumption on the trip"

-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  

division :: Double -> Double -> String
division a b
    | a > b = if b /= 0 then show(a/b) else "A is the bigger, but B is 0 and we can't divide by 0."
    | a < b = if a /= 0 then show(b/a) else "B is the bigger, but A is 0 and we can't divide by 0."
    | otherwise = if a /= 0 then show(a/b) else "We can't do the division, both numbers are 0 and we can't divide by 0."

-- Question 5
-- Write a function that takes in two numbers and calculates the sum of squares for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block.
asd :: Double -> Double -> Double
asd a b = let sqProd = sqrt abProd
                where abProd = a*b
                in sqProd + sqQuo
                where sqQuo = let abQuo = a/b in sqrt abQuo

lowerConsumption     :: Double -> Double -> Double -> String
lowerConsumption aCar bCar cCar
    | aCar > bCar = if bCar < cCar then "B car have the lowest consumption." else "C car have the lowest consumption."
    | aCar < bCar = if aCar < cCar then "A car have the lowest consumption." else "C car have the lowest consumption."
    | otherwise = "A car have the lowest consumption."
           