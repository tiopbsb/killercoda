## O que significa `ls`{{}}?

O primeiro comando que aprenderemos é o `ls`{{}}. Este comando vem da palavra `list`{{}}. Isso nos permite... listar o conteúdo de um diretório.

`ls`{{}} é o comando que podemos encontrar em todos os sistemas _Unix-like_ (Linux, por exemplo). Podemos vê-lo como um dos comandos _principais_ (nativos) do sistema.

> **Nota:** Sistemas _Unix-like_ são sistemas operacionais que seguem a filosofia e as normas do Unix original. Eles compartilham características comuns, como:
> - Estrutura de Arquivos: hierarquia de diretórios organizada, geralmente começando pela raiz (/);
> - Multitarefa e multiusuário: suporte para executar várias tarefas simultaneamente e para múltiplos usuários acessarem o sistema ao mesmo tempo; e
> - Interface de linha de comando (_CLI_): Frequentemente, incluem um _shell_ que permite interações através de comandos de texto;
> Exemplos de sistemas _Unix-like_ incluem Linux, BSD, Solaris e macOS. Esses sistemas são amplamente utilizados em servidores, desktops e dispositivos embarcados.

Ok, vamos brincar um pouco com isso.

Execute `ls`{{exec}}

O que vemos na tela é uma lista do conteúdo do diretório atual.

O que notamos de imediato é que temos cores diferentes. Podemos imaginar o que isso significa, mas vamos esquecê-lo por um instante. Podemos retirar as cores da resposta do comando:

`ls --color=no`{{exec}}

Então, isso nos leva à primeira saída, a lista colorida de conteúdo. Para tê-lo, precisamos executar

`ls --color=yes`{{exec}}

ou, alternativamente, por enquanto

`ls --color=auto`{{exec}}

Por enquanto, será suficiente dizer que essa opção colorida é adicionada como padrão em algun lugar do sistema, chegaremos lá em uma das lições futuras.