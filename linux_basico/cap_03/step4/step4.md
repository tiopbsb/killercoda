## Hora de ir para casa!
Onde quer que estejamos no sistema Linux, temos várias maneiras de voltar para casa (_diretório home_). 

Vamos até um diretório qualquer...

`cd /var/log`{{exec}}

`pwd`{{exec}}

Primeiro, se você se lembra do caminho do seu diretório _home_, use-o:

`cd /home/aluno`{{exec}}

`pwd`{{exec}}

Mas essa não é a maneira mais divertida de fazer isso.

Existe uma variável interna chamada $HOME. Essa variável contém o caminho para o _diretório home_ do usuário atual.

`cd /var/log`{{exec}}

`pwd`{{exec}}

`cd $HOME`{{exec}}

`pwd`{{exec}}

>A propósito, podemos exibir o valor dessa variável usando `echo $HOME`{{exec}}. 

Mas _$HOME_ é longo. Podemos usar algo mais curto - `~`{{}}

`cd /var/log`{{exec}}

`pwd`{{exec}}

`cd ~`{{}}

`pwd`{{exec}}

>**Três novidades para você:**
>1. '**~**' é um atalho para o _diretório home_ do usuário logado e pode ser usado em qualquer situação.
>2. O Linux permite o uso de variáveis que são como "caixas" que possuem um nome e armazenam um conteúdo. Quando precisamos desse conteúdo, nos referimos à variável (pelo nome) que o possui. As variáveis são identificadas por um '**$**' a frente de seu nome.
>3. O comando `echo`{{}} serve para exibir um conteúdo. Experimente `echo "Mostra esta frase!"`{{exec}}.

E, finalmente, a versão mais curta...

`cd /var/log`{{exec}}

`pwd`{{exec}}

`cd`{{exec}}

`pwd`{{exec}}

Sim, apenas `cd`{{}} (sem qualquer argumento) é o suficiente para voltar ao _diretório home_.

### Um extra sobre variáveis e o comando echo.
Definimos uma variável asim:

`nome_da_variavel="conteudo_da_variável"`{{}}

>**Obs.:**
>1. É importante obserar que não há espaços antes e depois do '**=**'. O nome da variável é 'colado' no '**=**' que é colocado no valor do conteúdo.
>2. Se o valor do conteúdo for numérico, não precisa estar entre aspas.

```
nome="Carlos"
idade=25
echo "Meu nome é $nome e eu tenho $idade anos."
```{{exec}}
