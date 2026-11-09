module Main where

import ListaTarefas
import Operacoes
import Tarefa

main :: IO ()
main = do
    -- Cada versão é uma nova lista. As versões anteriores continuam disponíveis.
    let v0 :: [Tarefa]
        v0 = listaInicial

    let v1 = adicionarTarefa "Praticar recursão" v0
    let v2 = concluirTarefa 1 v1
    let v3 = removerTarefa 2 v2
    let v4 = renomearTarefa 3 "Praticar recursão em Haskell" v3

    putStrLn "=== VERSOES DA LISTA (IMUTABILIDADE) ==="
    putStrLn "\nv0 - lista original:"
    print v0

    putStrLn "\nv1 - depois de adicionar uma tarefa:"
    print v1

    putStrLn "\nv2 - depois de concluir a tarefa 1:"
    print v2

    putStrLn "\nv3 - depois de remover a tarefa 2:"
    print v3

    putStrLn "\nv4 - depois de renomear a tarefa 3 (extensao):"
    print v4

    putStrLn "\n=== CONSULTAS ==="
    putStrLn "Descricoes pendentes em v4:"
    print (pendentes v4)

    putStrLn "Quantidade (concluidas, pendentes) em v4:"
    print (contarSituacao v4)

    putStrLn "\n=== CONFERENCIA DAS VERSOES ANTERIORES ==="
    putStrLn "v0 continua igual a lista inicial:"
    print (v0 == listaInicial)
    putStrLn "v1 continua guardando a tarefa adicionada:"
    print (v1 == adicionarTarefa "Praticar recursao" v0)
