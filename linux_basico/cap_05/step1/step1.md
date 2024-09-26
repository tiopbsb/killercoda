# O conceito de _pipes_ e redirecionamentos

O conceito é simples, de fato. _Pipes_ e redirecionamentos são usados para enviar (ou recuperar) informações de um comando ou script para outro comando ou script. Isso também funciona com arquivos. 

>O termo _pipes_ vem (do inglês) da ideia de canalizar (ou "encanar") a saída de um comando para a entrada de outro, de forma análoga a como a água flui através de tubos (_pipes_) em encanamentos. O conceito foi introduzido por Douglas McIlroy, um dos pioneiros do Unix, para permitir que diferentes programas pudessem se comunicar entre si, passando dados de um para o outro diretamente, sem a necessidade de arquivos temporários.

Vamos pensar em alguns exemplos:

- Contar o número de linhas em um arquivo.
- Selecionar valores únicos de um arquivo e gravá-los em outro.
- Encontrar ocorrências de uma _string_ em um arquivo ou sistema.
- E muitos outros.

Antes de começarmos, aqui estão alguns comandos que utilizaremos ao aprender sobre _pipes_. Obviamente, todos esses comandos podem ser usados de forma independente:

`grep`{{}} **(G**lobal **R**egular **E**xpression **P**rint). Este comando busca padrões de texto em arquivos ou na saída de outros comandos. Ele permite filtrar linhas que correspondem a um padrão especificado e exibe essas linhas como resultado.

>**Sintaxe:**
> - grep [OPTION] PATTERNS FILE
> - OPTIONS: opções.
> - PATTERNS: o padrão desejado.
> - FILE:  o nome do arquivo em que se deseja procurar

Exemplo 1: `grep 'case' .bashrc`{{exec}} irá procurar o padrão "case" no arquivo _.bashrc_.

Exemplo 2: `grep 'aluno' /etc/passwd`{{exec}} irá procurar o padrão "aluno" no arquivo _/etc/passwd_.

`wc` (**W**ord **C**ount). Utilitário para contar o número de linhas, palavras e bytes (ou caracteres) em arquivos ou na saída de outros comandos. Ele é frequentemente utilizado para obter informações sobre o tamanho ou conteúdo de um arquivo ou de uma entrada de texto.

>**Sintaxe:**
> - wc [OPTION] FILE

Opções comuns:
- `-l`{{}}: conta o número de **linhas**.
- `-w`{{}}: conta o número de **palavras**.
- `-c`{{}}: conta o número de **bytes**.

Exemplo: ao executar `wc -l .bashrc`{{exec}}, ele contará quantas linhas contém o arquivo _.bashrc_.

`sort`{{}} (**SORT**able). É usado para ordenar linhas de texto em arquivos ou na saída de outros comandos. Ele classifica o conteúdo em ordem alfabética ou numérica, dependendo das opções especificadas.

>**Sintaxe:**
> - sort [OPTION] FILE

Exemplo: `sort numbers.txt`{{exec}} irá ordenar um arquivo com números gerados.

`uniq`{{}}. É utilizada para filtrar e remover linhas duplicadas em um arquivo ou na saída de um comando. Suas principais características incluem:

1. **Remoção de duplicatas**. O `uniq`{{}} compara linhas consecutivas e elimina as repetições, exibindo apenas a primeira ocorrência de cada linha.
2. **Requer ordenação**. Para funcionar corretamente, o `uniq`{{}} geralmente precisa que as linhas sejam ordenadas previamente, pois ele só considera linhas consecutivas. Isso significa que, se você deseja usar `uniq`{{}} para remover duplicatas, é comum usá-lo em conjunto com o comando sort.
3. **Contagem de ocorrências**. O `uniq`{{}} também pode contar quantas vezes cada linha aparece, usando a opção -c, que precede cada linha com o número de ocorrências.
4. **Utilização em pipelines**. O comando pode ser facilmente integrado em pipelines (próximo tema), permitindo a filtragem de dados de outros comandos.

## O pipe |

A primeira estrutura aqui é o _pipe_, que usa **|**.

A estrutura se parece com isto:

`comando1 | comando2`{{}}

`comando1 | comando2 | comando3`{{}}

Sim, podemos combinar quantos _pipes_ quisermos.

Como funciona? A saída de _comando1_ é passada como entrada para _comando2_. E esse processo pode continuar para o próximo comando.

Vamos imprimir o arquivo primeiro.

`cat numeros.txt`{{}}

Ok, o arquivo é bastante grande. Quantos registros temos? Vamos usar um pipe com o comando que acabamos de usar para contar as linhas com `wc`{{}}!

`cat numbers.txt | wc -l`{{exec}}

Temos o número de linhas no arquivo! Perfeito. Agora, vamos coletar informações sobre quantos registros únicos temos. 

Saiba que o arquivo contém todos os números de 1 a 100 (alguns desses números repetidos várias vezes, claro). Logo, devemos ter 100 registros únicos!

`cat numbers.txt | uniq | wc -l`{{}}

Hm... algo não está certo. Vamos pensar...

Nós passamos os dados corretamente? Nesse momento, podemos dizer que sim. Imprimimos o arquivo, selecionamos valores únicos e os contamos. Mas... será que fizemos isso mesmo?

Esquecemos de algo? Sim, esquecemos. No caso que temos aqui, usamos o `uniq`{{}} em dados não ordenados. Por isso obtivemos cerca de 9.000 valores, quando deveríamos ter no máximo 100. É importante lembrar que `uniq`{{}} funciona melhor com `sort`{{}}. E o `sort`{{}} vem primeiro.

Vamos tentar:

`cat numbers.txt | sort | uniq | wc -l`{{}}

Sim! Agora funcionou.

E este aqui?

`sort -u numbers.txt | wc -l`{{}}

Mesmo resultado? Dê uma olhada na opção `-u`{{}} do comando `sort`{{}}...