## Deletar diretórios
O comando para se deletar um diretório é o `rmdir`{{}} (**R**e**M**ove **DIR**ectory). Eis sua sintaxe (ou sinopse):

>rmdir [OPTION]... DIRECTORY...

**Obs.:** Saiba que tudo o que aparece entre colchetes ([ ]) na sintaxe de um comando, é opcional.

Vamos voltar para o diretório _home_.

`cd`{{exec}}

`pwd`{{exec}}

`ls`{{exec}}

Primeiro, vamos remover o diretório root.

``rmdir root``{{exec}}

Agora, vamos remover todos os diretórios testdir.

`rmdir testdir{1..10}`{{exec}}

Sim, podemos usar a mesma sintaxe que usamos para criar esses diretórios :)

Ok, agora vamos remover o diretório _dir_pai_.

`rmdir dir_pai`{{exec}}

Hmm. Não conseguimos! O diretório não está vazio. Ok, temos uma solução. Você se lembra do argumento -p do comando mkdir?

rmdir -p parentdir

Também não funcionou!

Temos um diretório chamado maindir, vamos dar uma olhada dentro.

`ls maindir`{{exec}}

Podemos remover o diretório pai (parentdir) apenas quando ele estiver vazio. Isso funcionará então:

`rmdir -p maindir/childdir`{{exec}}

Para remover todo o diretório parentdir, precisamos usar um comando diferente, o rm. Este comando funciona para arquivos. E como tudo no Linux é um arquivo, ele deve funcionar para diretórios também.

`rm parentdir`{{exec}}

Mas... não funcionou.

Ok, vamos tentar isso:

`rmdir parentdir/*`{{exec}}

`rmdir parentdir`{{exec}}

Hmm... Se parece que o Linux inteligente não deveria funcionar assim...

Você está certo.

Temos outro diretório anotherparentdir com a mesma estrutura. Vamos fazer isso corretamente. E de forma arriscada.

`rm -rf anotherparentdir`{{exec}}

Uau, isso funcionou! Mas... Não funcionou com o rm anteriormente.

Agora usamos alguns argumentos:

-r significa percorrer recursivamente os diretórios (e tratar tudo como arquivo).
-f significa forçar. Em outras palavras, não perguntar, assumir que o usuário sabe o que está fazendo.

E é por isso que este é um comando arriscado.

Tente:

`rm -rf /`{{exec}}

**E leia a notificação**. Hoje em dia, o Linux tenta ser cuidadoso com seus usuários e este comando. Você entende o porquê?
