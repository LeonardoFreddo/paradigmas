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

-- COM FUNCOES LAMBDA
codificaCL :: String -> String
codificaCL xs = map (\c -> case c of
                         /= ' ' -> '-'
                         otherwise -> ' ')


-- SEM FUNCOES LAMBDA
codificaAUX :: Char -> Char
codificaAUX c
  | c /= ' ' = '-'
  | otherwise = ' '
codifica :: String -> String
codifica xs = map codificaAUX xs
