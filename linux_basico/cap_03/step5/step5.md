## Deletar diretórios
O comando para se deletar um diretório é o `rmdir`{{}} (**R**e**M**ove **DIR**ectory).

>**Sintaxe:**
>rmdir [OPTION]... DIRECTORY...
> - OPTION: opções docomando (opcional).
> - DIRECTORY: o nome do diretório.

**Obs.:** Saiba que tudo o que aparece entre colchetes ([ ]) na sintaxe de um comando, é opcional.

Vamos voltar para o diretório _home_.

`cd`{{exec}}

`pwd`{{exec}}

`ls`{{exec}}

Primeiro, vamos remover o diretório root.

`rmdir root`{{exec}}

Agora, vamos remover todos os diretórios testdir.

`rmdir testdir{1..10}`{{exec}}

Sim, podemos usar a mesma sintaxe que usamos para criar esses diretórios :)

Ok, agora vamos tentar remover o diretório _dir_pai_.

`rmdir dir_pai`{{exec}}

Hmm. Não conseguimos! Como você pôde perceber na mensagem enviada pelo sistema, o diretório não está vazio.

`rmdir: failed to remove 'dir_pai': Directory not empty`{{}}

Então só podemos remover diretórios vazios?

Com este comando, SIM!

Para remover diretórios não vazios e todo o seu conteúdo, precisaremos de outro comando: o `rm`{{}} (**R**e**M**ove).

>**Sintaxe:**
>rm [OPTION]... [FILE]...
> - OPTION: opções do comando
> - FILE: nome do arquivo a ser apagado.

`rm dir_pai`{{exec}}

Ooops! `rm: cannot remove 'dir_pai': Is a directory`{{}}

Ele etá dizendo que _dir_pai_ é um diretório! 

Isso mesmo. Este comando, a princípio, seria usado para arquivos. Mas como tudo no Linux são arquivos, ele vai servir para deletar diretórios também. No entanto, para tal, precisamos fazer uso de duas opções:

> - `-f`{{}}, `--force`{{}} ignora arquivos ixexistentes e não pede confirmação para apagar.
> - `-r`{{}}, `-R`{{}}, `--recursive`{{}} remove o diretório e seu conteúdo recursivamente.

Agora vamos tentar...

`rm -rf dir_pai`{{exec}}

Uau!!! Funcionou... Mas você percebe o poder deste comando?

>`rm -rf DIR`{{}} apaga **TODO** o conteúdo do diretório _DIR_. **Sem confirmação**! Ao executar este comando, esteja certo do que está fazendo, pois **não há** CTRL+Z que trará seu diretório de volta.

Agora tente:

`rm -rf /`{{exec}}

**E leia a notificação**. Hoje em dia, o Linux tenta ser cuidadoso com seus usuários e este comando. Você entende o porquê?

Vamos restaurar o diretório _dir_pai_.

`mkdir -p dir_pai/dir_filho{01..100}`{{exec}}

O que você acha que acontecerá ao executarmos

`rmdir dir_pai/*`{{exec}} ?

É fácil interpretar: todos os diretórios (**vazios**) dentro de _dir_pai_ serão deletados!