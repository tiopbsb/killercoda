## Deletar arquivo(s)
Já vimos no capítulo anterior que usamos o `rm`{{}} para apagar arquivos.

Podemos remover um único arquivo:

`rm try01`{{exec}}

Podemos remover mais de um arquivo:

`rm try1 try2`{{exec}}

Também podemos remover múltiplos arquivos:

`rm testdir/mytest{01..1000}`{{exec}}

E sim, podemos remover todos os arquivos, diretórios, toda a estrutura:

rm -rf testdir

Lemba do `rm-rf`{{}}, certo? Isso foi explicado na lição anterior.