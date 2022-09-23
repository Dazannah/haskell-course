-- Question 1
-- Write a multiline comment below.

{-
comment
-}

-- Question 2
-- Define a function that takes a value and multiplies it by 3.

func x = x*3

-- Question 3
-- Define a function that calculates the area of a circle.

func2 x = x^2*pi

-- Question 4
-- Define a function that calculates the volume of a cylinder by composing the previous function together with the height of the cylinder.

func3 x y = func2 x * y

-- Question 5
-- Define a function that takes the height and radius of a cylinder and checks if the volume is greater than or equal to 42.

func4 x y = if func3 x y >= 42 then "Greater than 42" else "Smaller than 42"