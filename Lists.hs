import Data.List

someList = [1,2,3]

listLength = length someList
isListEmpty = null someList
firstElement = head someList
allButFirstElement = tail someList
lastElement = last someList
allButLastElement = init someList
reverseListContent = reverse someList --it also reverse a string, since a string is a list!

listOfBooleans = [True, False]

isAllElementTrue = and listOfBooleans
isSomeElementTrue = or listOfBooleans

otherList = [4,5,6]
concatenateTwoLists = someList ++ otherList

isAllOddsInList = all odd concatenateTwoLists
isAnyEvenInList = any even concatenateTwoLists

nameList = ["Rick", "Julia", "Mario", "Samara"]

takeSomeItems = take 3 nameList
dropSomeItems = drop 3 nameList --drop "skip" some items
splitItems = splitAt 2 nameList --will create 2 lists

takeWhileOdd = takeWhile odd [1, 3, 5, 6, 8, 9, 11] --[1, 3, 5]
dropWhileEven = dropWhile even [2, 4, 6, 7, 9, 10, 12] --[7, 9, 10, 12]

--will do the same as takeWhile and dropWhile,
--however will bring 2 lists (with the "excluded" too)
spanEven = span even [2, 4, 6, 7, 9, 10, 11] --([2,4,6],[7,9,10,11])
breakEven = break even [1, 3, 5, 6, 8, 9, 10] --([1,3,5],[6,8,9,10])

--check if contains some element in the list
containSomeElement = elem 2 [1, 2, 3]
notContainSomeElement = 2 `notElem` [4, 5, 6]

--filter a list with some function
filterJohn someName = if someName == "John"
                      then True
                      else False

filterList = filter filterJohn ["Maria", "Billie", "John"]

--starts or ends with..
startsWith = "New" `isPrefixOf`  "New York"
contains = isInfixOf "hing" "Washington" --same as elem for me!
endsWith = isSuffixOf "ton" "Washington"

--pair lists
pairLists = zip [1,2,3] ['a','b','c']

--do some function while pair lists and return a single list
someFunctionWhilePair a b = a + b
pairListsDoingSomething = zipWith someFunctionWhilePair [1, 2, 3] [4, 5,6]

--check if a list is empty before doing something
doSomething xList = if not (null xList)
                    then head xList
                    else 'Z'
