## Listar todos os arquivos

Talvez você já saiba que existem muitos arquivos e diretórios que são ocultos. Isso geralmente significa que esses objetos não são listados ao usar comandos padrão de listagem ou ainda na visualização padrão em interfaces gráficas - GUI (_Graphical User Interface_). 

O Linux usa um ponto (.) no início do nome do objeto oculto. Estes arquivos também são chamados de _dotfiles_. Ok, vamos listar os arquivos novamente.

`ls`{{exec}}

Humm, será que há arquivos ocultos?

Sim, precisamos encontrar a _opção_ apropriada. Desta vez será `-a`{{}} ou `--all`{{}}.

`ls -a`{{exec}}

Esse comando listou muito mais arquivos do que antes. Muitos _dotfiles_! Não importa o que eles são, pelo menos por enquanto. Mas dois deles precisam ser explicados.

- `.`{{}} 
- `..`{{}}

O primeiro, `.`{{}} simplesmente significa o diretório atual em que você se encontra.

o segundo, `..`{{}} significa o diretório pai. Ou seja, o diretório que está um nível acima daquele em que você se encontra.

Simples assim :)

> As entradas especiais `.`{{}} e `..`{{}} servem para traçar um caminho relativo de um objeto. Ou seja, o caminho até o objeto, em relação ao diretório em que o usuário se encontra.
Exemplo: é fácil perceber que o comando `ls .` pode mostrar resultados diferentes infulenciados pelo conteúdo do diretório em que é aplicado.

Então... Vamos tentar algo.

`ls .`{{exec}}

Irá mostrar exatamente a mesma saída que o simples `ls`{{}}. E

`ls ..`{{exec}}

mostra... sim, a estrutura do diretório pai!

A última _opção_ para esta seção é `-A`{{}} (A maiúsculo). Enquanto `-a`{{}} significa "_all_ - todos", `-A`{{}} significa "_almost all_ (quase todos)". Nesse caso, o comando mostrará todos os arquivos, exceto `.`{{}} e `..`{{}}.

Vamos tentar: `ls -A`{{exec}}

Ok, última coisa por agora. Podemos combinar múltiplas opções em um comando. Tente executar:

`ls -al`{{exec}}

> Note que ao selecionar mais de uma _opção_, usa-se apenas um traço `-`{{}} antecedendo-os.

O que você vê?