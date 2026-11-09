# Seminário Haskell — Tema 02: Imutabilidade em uma lista de tarefas

## Objetivo

Demonstrar imutabilidade, funções puras, tuplas, pattern matching e recursão por meio de um gerenciador de tarefas. Cada operação retorna uma nova lista; as versões anteriores permanecem intactas.

## Estrutura

```text
seminario-haskell/
├── Main.hs
├── Tarefa.hs
├── ListaTarefas.hs
├── Operacoes.hs
├── ExemploConceitual.hs
├── DESAFIO_INVESTIGATIVO.md
├── COMPARACAO_C_E_HASKELL.md
├── comparacao/
│   └── exemplo_imperativo.c
└── README.md
```

## Funções implementadas

1. `adicionarTarefa`: acrescenta uma tarefa pendente ao final, com novo ID.
2. `concluirTarefa`: marca uma tarefa como concluída.
3. `removerTarefa`: remove uma tarefa pelo ID.
4. `pendentes`: retorna as descrições das tarefas não concluídas.
5. `contarSituacao`: retorna a quantidade de concluídas e pendentes.
6. `renomearTarefa`: extensão do grupo, altera a descrição pelo ID.

As funções usam recursão e pattern matching. Não usam `map`, `filter` ou `foldl`/`foldr`.

## Requisitos

- GHC e GHCi.
- Não são necessárias bibliotecas externas.
- O código usa recursos do Prelude.

## Como executar

Execute o exemplo prático, com as cinco funções obrigatórias e a extensão:

```powershell
runghc Main.hs
```

Ou compile com avisos:

```powershell
ghc -Wall Main.hs -o seminario
```

No Windows PowerShell:

```powershell
.\seminario.exe
```

Execute o exemplo conceitual separadamente:

```powershell
runghc ExemploConceitual.hs
```

Para testar interativamente:

```powershell
ghci Main.hs
```

No GHCi, por exemplo:

```haskell
import ListaTarefas
import Operacoes
let v0 = listaInicial
let v1 = adicionarTarefa "Ler" v0
v0
v1
contarSituacao v1
```

## Versões imutáveis demonstradas

`Main.hs` constrói `v0`, `v1`, `v2`, `v3` e `v4`, imprime todas ao final e mostra consultas sobre a versão mais recente. As versões anteriores continuam disponíveis.

## Comparação com C

Consulte `COMPARACAO_C_E_HASKELL.md` e `comparacao/exemplo_imperativo.c`.

## Desafio investigativo

Consulte `DESAFIO_INVESTIGATIVO.md`. A equipe deve executar os comandos no GHCi, registrar capturas reais e explicar os resultados.

## Equipe

Adicionar os nomes completos dos integrantes e a responsabilidade de cada um antes da entrega.

## Referências

- Documentação oficial do GHC: https://www.haskell.org/ghc/
- Haskell 2010 Language Report: https://www.haskell.org/onlinereport/haskell2010/
- Learn You a Haskell for Great Good!: http://learnyouahaskell.com/

## Observação

Confiram com o documento completo do seminário se há instruções adicionais para a apresentação, as perguntas e a atividade rápida. As evidências do GHCi devem ser produzidas pela própria equipe.
