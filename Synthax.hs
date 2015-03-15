--loop
--someName = "Waterfall"
--addBars (x:xs) | show x
--               | addBars xs


rateDogAge dogAge
  | dogAge <= 2 = "Oh! it's a puppy!"
  | dogAge <= 8 = "Yeah! it's a good boy"
  | otherwise   = "Take care, he's getting old :("

showDogAgeAsHuman dogAge
  | humanAge <= 12 = "Oh! it's a baby!"
  | humanAge <= 50 = "Yeah! it's a strong adult"
  | otherwise      = "He's retiring :("
  where humanAge = dogAge * 7

--local variable
calculateDogAgeAsHuman dogAge = let humanAge = dogAge * 7
                                in humanAge

