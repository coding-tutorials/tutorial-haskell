doSomeInputAndOutput :: IO () --the function will be of type IO
doSomeInputAndOutput = do --this is required for every function that does IO
  putStrLn "What's your name?"
  name <- getLine
  putStrLn ("Oh.. welcome " ++ name ++ "!")

someReturn :: IO (String, String) -- no "->" used with IO
someReturn = return ("orange", "chocolate") --"return" in haskell is only used for returning IO input

doSomeOutput :: IO ()
doSomeOutput = do
  (juice, candy) <- someReturn
  putStrLn("Favorite juice: " ++ juice)
  putStrLn("Favorite candy: " ++ candy)
  --variables inside do block
  let goodies = "Goodies: " ++ juice ++ " and " ++ candy
  putStrLn goodies