## Deletar arquivo(s)
Já vimos no capítulo anterior que usamos o `rm`{{}} (**R**e**M**ove) para apagar arquivos.

Podemos remover um único arquivo:

`rm arquivo01`{{exec}}

Podemos remover mais de um arquivo:

`rm arquivo1 arquivo2`{{exec}}

Também podemos remover múltiplos arquivos:

`rm testdir/mytest{01..1000}`{{exec}}

E sim, podemos remover todos os arquivos, diretórios, toda a estrutura:

`rm -rf testdir`{{}}

Lemba do `rm -rf`{{}}, certo? Isso foi explicado na lição anterior.

>**Obs.:** Note que o sistema não pede confirmação para apagar arquivos. E também não importa se o arquivo está vazio ou não.

Agora tente apagar o arquivo _carta.doc_.

`rm carta.doc`

Deu certo? O que ocorreu?

>É importante notar que o Linux (assim como qualquer outro Sistema Operacional) se comunica com o usuário, sempre retornando um _feedback_ dos comando executados. Se nada é retornado, é porque deu certo.