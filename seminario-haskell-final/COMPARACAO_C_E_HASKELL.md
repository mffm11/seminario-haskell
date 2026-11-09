# Comparação: alteração de tarefa em C e Haskell

## C — alteração no próprio vetor

O arquivo `comparacao/exemplo_imperativo.c` mostra a alteração direta de um elemento do vetor:

```c
tarefas[id] = 1;
```

O vetor existente é modificado no lugar.

## Haskell — criação de uma nova versão

No projeto, a função:

```haskell
concluirTarefa :: Int -> [(Int, String, Bool)] -> [(Int, String, Bool)]
```

percorre a lista e devolve uma nova lista com a tarefa indicada marcada como concluída. A lista recebida não é alterada.

## Diferença principal

- C: a instrução modifica o conteúdo do vetor existente.
- Haskell: a função produz um novo valor; a lista original continua disponível.

Em Haskell, a nova lista pode compartilhar partes imutáveis da estrutura anterior. Isso não significa que qualquer transformação tenha custo constante: depende da operação e da posição do elemento.
