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

Ok, funciona. Temos o número de linhas, mas... também temos um nome de arquivo. Sim, podemos fazer coisas diferentes para removê-lo. Um exemplo? Sim, por que não!

`wc -l numeros.txt | awk '{print $1}'`{{exec}}

ou...

`awk 'END{print NR}' numeros.txt`{{exec}}

(Agora você pode sair e impressionar todos ao seu redor com o que sabe sobre Bash e awk! ;) )

Mas queremos usar redirecionamento para contar as linhas.

`wc -l < numeros.txt`{{exec}}

Ok. Vamos escrever esse número em outro arquivo:

`wc -l < numeros.txt > contagem.txt`{{exec}}

`cat contagem.txt`{{exec}}

— temos isso!

Podemos fazer coisas loucas (e às vezes inúteis), como:

`sort < numeros.txt | uniq`{{exec}}

O redirecionamento de entrada, **<**, é usado principalmente para redirecionar conteúdo para um arquivo, a fim de realizar algumas operações. Vamos ver um exemplo muito simples de uma linha:

`while read line; do echo "Conteúdo da linha: ${line}"; done < numeros.txt`{{exec}}

O que acabamos de fazer? Criamos um loop (falaremos sobre isso mais tarde) e imprimimos cada linha do arquivo, enquanto houver algo mais no arquivo _numeros.txt_.