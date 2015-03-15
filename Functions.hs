--you have some functions
mealFunction food drink = "I'll eat " ++ food ++ " and drink " ++ drink
shopFunction food drink = "I need to buy " ++ food ++ " and " ++ drink

--you can create another function, that receives other function as parameter
--and call then in your function body
doBreakfast f = f "eggs" "milk"

--now you can call a function, passing other function as parameter!
haveBreakfast = doBreakfast mealFunction
shopBreakfast = doBreakfast shopFunction


