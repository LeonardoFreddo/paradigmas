import Data.Char


-- Ex1 - Crie uma funcao que verifique se um caracter é uma vogal ou nao
isVowel :: Char -> Bool
isVowel c
  | (c == 'a') || (c == 'e') || (c == 'i') || (c == 'o') || (c == 'u') = True
  | (c == 'A') || (c == 'E') || (c == 'I') || (c == 'O') || (c == 'U') = True
  | otherwise = False

-- Ex2 - Escreva uma funcao que adicione uma virgula no final de cada string contida em uma lista
addComma :: [String] -> [String]
addComma xs = map (\x -> x ++ ",") xs

-- Ex3 - Crie uma função que receba uma lista de strings e retorne outra lista
-- contendo as strings formatadas como itens de lista em HTML.
-- Resolva este exercício COM e SEM funções anônimas (lambda)

-- COM FUNCOES LAMBDA
htmlListItems :: [String] -> [String]
htmlListItems xs = map (\x -> "<LI>" ++ x ++ "</LI>") xs

-- SEM FUNCOES LAMBDA
htmlListItemsAUX :: String -> String
htmlListItemsAUX x = "<LI>" ++ x ++ "</LI>"

htmlListItemsSL :: [String] -> [String]
htmlListItemsSL xs = map htmlListItemsAUX xs

-- Ex4 Defina uma função que receba uma string e produza outra retirando as vogais.
-- Resolva este exercício COM e SEM funções anônimas (lambda).

-- COM FUNCOES LAMBDA
semVogais :: String -> String
semVogais xs = filter (\c -> (c /= 'a')&&(c /= 'e')&&(c /= 'i')&&(c /= 'o')&&(c /= 'u')) xs

-- SEM FUNCOES LAMBDA
semVogaisAUX :: Char -> Bool
semVogaisAUX c
  | (c == 'a') || (c == 'e') || (c == 'i') || (c == 'o') || (c == 'u') = False
  | otherwise = True

semVogaisSL :: String -> String
semVogaisSL xs = filter semVogaisAUX xs

-- Ex5 Defina uma função que receba uma string, possivelmente contendo espaços,
-- e que retorne outra string substituindo os demais caracteres por '-', mas mantendo os espaços.
-- Resolva este exercício COM e SEM funções anônimas (lambda).

--COM FUNCOES LAMBDA
codificaCL :: String -> String
codificaCL xs = map (\c -> case () of
                           _| c /= ' '  -> '-'
                            | otherwise -> ' ') xs


-- SEM FUNCOES LAMBDA
codificaAUX :: Char -> Char
codificaAUX c
  | c /= ' ' = '-'
  | otherwise = ' '
codifica :: String -> String
codifica xs = map codificaAUX xs

-- Ex6 Escreva uma função que, dado o nome completo de uma pessoa, obtenha seu primeiro nome.
firstName :: String -> String
firstName xs = takeWhile (/= ' ') xs 

-- Ex7 Escreva uma função que verifique se uma dada string só contém dígitos de 0 a 9. 
isIntAUX :: String -> Int
isIntAUX xs = length(filter (\c -> (c /= '0')&&(c /= '1')&&(c /= '2')&&(c /= '3')&&(c /= '4')&&(c /= '5')&&(c /= '6')&&(c /= '7')&&(c /= '8')&&(c /= '9')) xs)

isInt :: String -> Bool
isInt xs
  | isIntAUX xs > 0 = False
  | otherwise = True

-- Ex8 Escreva uma função que, dado o nome completo de uma pessoa, obtenha seu último sobrenome.
lastName :: String -> String
lastName xs = last (words xs)

-- Ex9 Escreva uma função que, dado o nome completo de uma pessoa, crie um nome de usuário (login) da pessoa, formado por: 
-- primeira letra do nome seguida do sobrenome, tudo em minúsculas.
userName :: String -> String
userName xs = (toLower(head(head(words xs))) : toLower(head(last(words xs)))  : []) ++ tail (last(words xs))

-- Ex10 Escreva uma função que substitua vogais em uma string, conforme o esquema a seguir: 
-- a = 4, e = 3, i = 2, o = 1, u = 0.
encodeNameAUX ::  Char -> Char
encodeNameAUX c
  | (c == 'a') || (c == 'A') = '4'
  | (c == 'e') || (c == 'E')= '3'
  | (c == 'i') || (c == 'I')= '2'
  | (c == 'o') || (c == 'O')= '1'
  | (c == 'u') || (c == 'U')= '0'
  | otherwise = c  

encodeName :: String -> String
encodeName xs = map encodeNameAUX xs

-- Ex11 Escreva uma função que substitua vogais em uma string, conforme este esquema: 
-- a = 4, e = 3, i = 1, o = 0, u = 00.
betterEncodeNameAUX ::  Char -> String
betterEncodeNameAUX c
  | (c == 'a') || (c == 'A') = '4' : []
  | (c == 'e') || (c == 'E')= '3' : []
  | (c == 'i') || (c == 'I')= '2' : []
  | (c == 'o') || (c == 'O')= '1' : []
  | (c == 'u') || (c == 'U')= "00"
  | otherwise = c : []

betterEncodeName :: String -> String
betterEncodeName xs = concat (map betterEncodeNameAUX xs)

-- Ex12 Dada uma lista de strings, produzir outra lista com strings de 10 caracteres, usando o seguinte esquema: 
--strings de entrada com mais de 10 caracteres são truncadas, strings com até 10 caracteres são completadas com '.' até ficarem com 10 caracteres.
funcREC :: String -> String
funcREC xs =
  if length xs < 10
    then funcREC (xs ++ ('.' : []))
    else xs
funcAUX :: String -> String
funcAUX xs
  | length xs >= 10 = take 10 xs
  | otherwise = funcREC xs

func :: [String] -> [String]
func xs = map funcAUX xs

