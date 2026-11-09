# Desafio investigativo — imutabilidade e compartilhamento estrutural

## Como Haskell evita copiar estruturas inteiras?

Listas em Haskell são estruturas encadeadas e imutáveis. Uma lista é formada por células (cons) que guardam um elemento e uma referência para o restante da lista. Como essas células não podem ser alteradas, partes que não mudaram podem ser reutilizadas por novas listas. Esse reaproveitamento é chamado de compartilhamento estrutural.

Por exemplo, ao concluir uma tarefa que está no começo da lista, a função cria uma nova célula para a tarefa alterada e pode reutilizar a cauda que não mudou. Se a alteração estiver mais adiante, as células do prefixo percorrido precisam ser reconstruídas, mas os elementos e a cauda não modificados podem ser compartilhados. Portanto, não se deve afirmar que toda operação custa sempre O(1): o custo depende da posição e da operação. `adicionarTarefa`, que acrescenta ao final usando `++`, percorre/reconstrói a espinha da lista.

A imutabilidade garante que as versões antigas não sejam modificadas. O compartilhamento estrutural é uma estratégia de implementação que evita duplicar desnecessariamente os dados que permanecem iguais.

## Comandos para produzir evidências no GHCi

Na pasta do projeto, execute:

```text
ghci Main.hs
```

No GHCi, experimente:

```haskell
import ListaTarefas
import Operacoes
let v0 = listaInicial
let v1 = concluirTarefa 1 v0
v0
v1
v0 == listaInicial
:quit
```

Resultados esperados:
- `v0` continua com a tarefa 1 pendente.
- `v1` mostra a tarefa 1 concluída.
- `v0 == listaInicial` retorna `True`.

Esses comandos demonstram que a transformação devolve uma nova versão e não altera o valor original. A igualdade observada é evidência da preservação do valor; ela não mede diretamente o compartilhamento de memória.

## Evidências a registrar para a apresentação

Executem os comandos no ambiente da equipe e incluam capturas de tela reais do GHCi, junto com a explicação dos resultados. Não usem capturas simuladas.
