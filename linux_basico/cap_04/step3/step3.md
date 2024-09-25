## Outros modos de criar arquivos

É importante salientar que há outras maneiras de criarmos arquivos no Linux.

### Com um editor de textos

O Linux possui aplicações para edição de textos. Dois exemplos são o **vim** e o **nano**.

Podemos, ao carregá-los, passar o nome do arquivo como parâmetro. E caso o arquivo não exista, será criado. Vejamos.

`nano meu_arquivo.txt`{{exec}}

Escreva algumas linha. Observe o _menu_ de opções no rodapé do editor. Pressione `CTRL+O`{{}} para salvar (confirme o nome). Para sair, pressione `CTRL+X`{{}}.

Observe o seu arquivo criado:

`ls meu_arquivo.txt`{{exec}}

Use o comando `cat`{{}} (con**CAT**enate) para visualizar o conteúdo de um arquivo.

>**Sintaxe:**
> - cat [OPTION]... FILE...
> - OPTION: opções do comando.
> - FILE: nome do arquivo que se quer ler.

`cat meu_arquivo.txt`{{exec}}

>É melhor deixar para usar o ***_vim_*** um pouco mais a frente.

### Com os direcionadores **>** e **>>**.

Lembra do comando `echo`{{}}? Usamos em alguma aula passada para imprimir algo na tela.

Podemos usar o 'direcionador' (`>`) para enviar a saída do comando `echo`{{}} para um arquivo. Veja os exemplos.

`echo "Mais uma linha" `{{}}

`echo "Mais uma linha" > meu_arquivo.txt`{{}}

Observe o conteúdo:

`cat meu_arquivo.txt`{{exec}}

Caso não tenha percebido, o conteúdo do arquivo foi sobrescrito. É isso que faz o direcionador `>`{{}}. Caso queira que um novo conteúdo seja **adicionado** ao final do arquivo, use o direcionador `>>`{{}}.

`echo "Esta é uma nova linha" > meu_arquivo.txt`{{}}

Confirme:

`cat meu_arquivo.txt`{{exec}}

Os direcionadores podem ser usados com qualquer comando. Tente

`ls -d /* > diretorios_da_raiz`{{exec}}

Dê uma olhada no arquivo criado:

`cat diretorios_da_raiz`{{exec}}