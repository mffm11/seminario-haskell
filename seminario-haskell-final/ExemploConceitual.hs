module Main where

-- Uma função pura recebe uma lista e devolve uma nova lista.
-- Ela não altera a lista que recebeu.
adicionarNoInicio :: Int -> [Int] -> [Int]
adicionarNoInicio valor lista = valor : lista

main :: IO ()
main = do
    let versaoOriginal = [10, 20, 30]
    let novaVersao = adicionarNoInicio 5 versaoOriginal

    putStrLn "Exemplo conceitual de imutabilidade"
    putStrLn "Lista original:"
    print versaoOriginal
    putStrLn "Nova lista:"
    print novaVersao
    putStrLn "A lista original permanece intacta:"
    print (versaoOriginal == [10, 20, 30])
