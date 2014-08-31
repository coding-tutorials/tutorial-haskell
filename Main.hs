--função simples de média
mediaDeDoisNumeros numero1 numero2 = (numero1 + numero2) / 2

resultadoDaMediaDeDoisNumeros = mediaDeDoisNumeros 2 5
resultadoDaMediaDeDoisNumeros_UsandoInfixNotation = 2 `mediaDeDoisNumeros` 5
resultadoDaMediaDaMedia = (2 `mediaDeDoisNumeros` 5) `mediaDeDoisNumeros` 10

--verificação de um número
ehMultiploDeCincoOuTres numero = (numero `mod` 3) == 0 || (numero `mod` 5) == 0

resultadoDeVerificacao_Verdadeiro = ehMultiploDeCincoOuTres(15)
resultadoDeVerificacao_Falso = ehMultiploDeCincoOuTres(7)

escreveUmResutadoDeVerificacao x = if ehMultiploDeCincoOuTres x
                      then "O número é multiplo de 3 ou 5"
                      else "O número não é multiplo de 3 ou 5"

--monta uma lista de numeros 0 a 100 que passam pela verificação
numerosDeZeroACem = [1..100]
numerosMultiplosDeCioncoOuTres = [x | x <- numerosDeZeroACem , ehMultiploDeCincoOuTres x]

--verifica se o nome contem na lista, usando funções com assinaturas de tipos
listaDeJogadores = ["Jobson","Kleiston","Ronaldo","Suelinton"]

temCraqueNaLista :: [String] -> Bool
temCraqueNaLista lista = "Ronaldo" `elem` lista

resultadoDeCraque = temCraqueNaLista listaDeJogadores

--remove vogais de uma string
removerVogais :: String -> String
removerVogais texto = [x | x <- texto, not (x `elem` "aeiouAEIOU")]

resultadoDeRemoverVogais = removerVogais "Olha esse é um texto com um monte de vogais!"

--junta 2 listas em 1
listaDeNumeros_A = [10,20,30,40,50]
listaDeNumeros_B = [8, 13, 18]

juntaDuasListas :: Eq a => [a] -> [a] -> [a]
juntaDuasListas lista1 [] = lista1
juntaDuasListas lista1 (elementoLista2:lista2) | elementoLista2 `elem` lista1 = juntaDuasListas lista1 lista2
                                               | otherwise = juntaDuasListas (lista1 ++ [elementoLista2]) lista2

resultadoDeJuncaoDeDuasListas = listaDeNumeros_A `juntaDuasListas` listaDeNumeros_B

--printa algum resultado
main = print resultadoDeJuncaoDeDuasListas
