## Redirecionar **de** um arquivo

Fizemos redirecionamento _para_ o arquivo. Também podemos fazer na direção oposta.

Temos nosso arquivo _numeros.txt_. Quando o imprimimos, vemos:

`cat numeros.txt`{{exec}}

Ok, vamos usar este arquivo como entrada para nossos comandos.

Você se lembra de como contamos o número de linhas no arquivo?

`cat numeros.txt | wc -l`{{exec}}

>**Nota**. Esta não é a melhor maneira de fazermos isso! O uso do `cat`{{}} para este fim está pra lá de obsoleto.

Podemos simplesmente fazer:

`wc -l numeros.txt`{{exec}}

Observe que o comando `wc`{{}} traz como resposta o nome do arquivo também. Às vezes pode ser que não queiramos isso.

O comando `awk`{{}} (**A**ho, **W**einberger e **K**ernighan - seus criadores) é uma poderosa ferramenta usada para manipular e transformar dados em arquivos de texto, permitindo realizar operações como seleção, filtragem, formatação e relatórios. O `awk`{{}} lê a entrada linha por linha, divide cada linha em campos (usualmente separados por espaços ou delimitadores especificados) e permite que o usuário execute ações em cada linha ou campo. 

>**awk '[PATTERN] ACTION' FILE**
> - PATTERN (PADRÃO): é a condição que define quais linhas do arquivo devem ser processadas. Pode ser uma expressão regular, uma condição, ou uma linha específica..
> - ACTION: o que deve ser feito com as linhas que correspondem ao padrão. Pode incluir comandos como _print_, operações aritméticas, etc.
> - FILE: o nome do arquivo de entrada que será processado.

Exemplos:
1. Imprimir todas as linhas: `awk '{ print }' arquivo.txt`{{}}.
2. Imprimir a primeira coluna de um arquivo: `awk '{ print $1 }' arquivo.txt`{{}}.
3. Imprimir linhas que contêm uma palavra específica: `awk '/palavra/ { print }' arquivo.txt`{{}}.

Vamos tentar isto:

`wc -l numeros.txt | awk '{print $1}'`{{exec}}

Mas queremos usar redirecionamento para contar as linhas.

`wc -l < numeros.txt`{{exec}}

Ok. Vamos escrever esse número em outro arquivo:

`wc -l < numeros.txt > contagem.txt`{{exec}}

`cat contagem.txt`{{exec}} — temos isso!

Podemos fazer coisas loucas (e às vezes inúteis), como:

`sort < numeros.txt | uniq`{{exec}}

O redirecionamento de entrada, **<**, é usado principalmente para redirecionar conteúdo para um arquivo, a fim de realizar algumas operações. Vamos ver um exemplo muito simples de uma linha:

`while read line; do echo "Conteúdo da linha: ${line}"; done < numeros.txt | sort | uniq`{{exec}}

O que acabamos de fazer? Criamos um loop (falaremos sobre isso mais tarde) e imprimimos cada linha do arquivo, enquanto houver algo mais no arquivo _numeros.txt_.