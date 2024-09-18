# O que significa `ls`{{}}?

O primeiro comando que aprenderemos é `ls`{{}}. Este comando vem da palavra `list`{{}}. Isso nos permite... listar o conteúdo de um diretório.

`ls`{{}} é o comando que podemos encontrar em todos os sistemas _Unix-like_ (Linux, por exemplo). Podemos vê-lo como um dos comandos 'principais' do sistema.

Ok, vamos brincar um pouco com isso.

Execute `ls`{{exec}}

O que vemos na tela é uma lista do conteúdo do diretório atual.

O que notamos de imediato é que temos cores diferentes. Podemos imaginar o que isso significa, mas vamos esquecê-lo por um instante. Podemos retirar as cores da resposta do comando:

`ls --color=no`{{exec}}

Então, isso nos leva à primeira saída, a lista colorida de conteúdo. Para tê-lo, precisamos executar

`ls --color=yes`{{exec}}

ou, alternativamente, por enquanto

`ls --color=auto`{{exec}} .

Por enquanto, será suficiente dizer que essa opção colorida é adicionada como padrão em algun lugar do sistema, chegaremos lá em uma das lições futuras.