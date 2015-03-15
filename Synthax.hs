--guards
rateDogAge dogAge
  | dogAge <= 2 = "Oh! it's a puppy!"
  | dogAge <= 8 = "Yeah! it's a good boy"
  | otherwise   = "Take care, he's getting old :("

--pattern matching
somePattern [] = "The list is null"
somePattern (x : xs) = "The first element is: " ++ x ++ " and the others are: " ++ show(xs)

--case expression, same as pattern matching
someCase someList = case someList of
  []        -> "The list is null"
  (x : xs)  -> "The first element is: " ++ x ++ " and the others are: " ++ show(xs)

--local variable, you create variables to use only inside a function
--(you can write let in the middle of functions too)
useLocalVariable dogAge = let humanAge = dogAge * 7
                          in "If dog was human, it'll be " ++ show(humanAge) ++ " yo, but it's " ++ show(dogAge)


--where, is like let (local variables), but you write where only in the bottom of function. 
showDogAgeAsHuman dogAge
  | humanAge <= 12 = "Oh! it's a baby!"
  | humanAge <= 50 = "Yeah! it's a strong adult"
  | otherwise      = "He's retiring :("
  where humanAge = dogAge * 7

