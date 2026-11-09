module Operacoes where

-- 1. Acrescenta uma tarefa não concluída ao final.
-- O novo identificador é o maior identificador existente + 1,
-- ou 1 quando a lista está vazia.
adicionarTarefa :: String -> [(Int, String, Bool)] -> [(Int, String, Bool)]
adicionarTarefa descricao tarefas =
    tarefas ++ [(maiorId tarefas + 1, descricao, False)]

maiorId :: [(Int, String, Bool)] -> Int
maiorId [] = 0
maiorId ((identificador, _, _):resto)
    | identificador > maiorId resto = identificador
    | otherwise = maiorId resto


-- 2. Marca como concluída a tarefa com o identificador informado.
concluirTarefa :: Int -> [(Int, String, Bool)] -> [(Int, String, Bool)]
concluirTarefa _ [] = []
concluirTarefa idProcurado ((identificador, descricao, concluida):resto)
    | identificador == idProcurado =
        (identificador, descricao, True) : resto
    | otherwise =
        (identificador, descricao, concluida)
            : concluirTarefa idProcurado resto


-- 3. Remove a tarefa com o identificador informado.
removerTarefa :: Int -> [(Int, String, Bool)] -> [(Int, String, Bool)]
removerTarefa _ [] = []
removerTarefa idProcurado ((identificador, descricao, concluida):resto)
    | identificador == idProcurado = resto
    | otherwise =
        (identificador, descricao, concluida)
            : removerTarefa idProcurado resto


-- 4. Retorna as descrições das tarefas ainda não concluídas.
pendentes :: [(Int, String, Bool)] -> [String]
pendentes [] = []
pendentes ((_, descricao, concluida):resto)
    | concluida = pendentes resto
    | otherwise = descricao : pendentes resto


-- 5. Retorna (quantidade de concluídas, quantidade de pendentes).
contarSituacao :: [(Int, String, Bool)] -> (Int, Int)
contarSituacao [] = (0, 0)
contarSituacao ((_, _, concluida):resto)
    | concluida =
        (concluidasResto + 1, pendentesResto)
    | otherwise =
        (concluidasResto, pendentesResto + 1)
  where
    (concluidasResto, pendentesResto) = contarSituacao resto


-- Extensão do grupo: altera a descrição de uma tarefa pelo identificador.
-- Se o identificador não existir, a lista permanece igual.
renomearTarefa :: Int -> String -> [(Int, String, Bool)] -> [(Int, String, Bool)]
renomearTarefa _ _ [] = []
renomearTarefa idProcurado novaDescricao
    ((identificador, descricao, concluida):resto)
    | identificador == idProcurado =
        (identificador, novaDescricao, concluida) : resto
    | otherwise =
        (identificador, descricao, concluida)
            : renomearTarefa idProcurado novaDescricao resto
