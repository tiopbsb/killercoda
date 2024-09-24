## Hora de ir para casa!
Onde quer que estejamos no sistema Linux, temos várias maneiras de voltar para casa (_diretório home_). Alguns dizem que todos os caminhos levam a Roma; no Linux, isso é quase verdade :)

Primeiro, se você se lembra do caminho do seu diretório home, use-o:

`cd /var/log`{{exec}}

`pwd`{{exec}}

`cd /home/aluno`{{exec}}

`pwd`{{exec}}

Mas essa não é a maneira mais divertida de fazer isso.

Existe uma variável interna chamada $HOME. Essa variável contém o caminho para o diretório home do usuário atual.

`cd /var/log`{{exec}}

`pwd`{{exec}}  

`cd $HOME`{{exec}}

`pwd`{{exec}}

A propósito, podemos exibir o valor dessa variável usando `echo $HOME`{{exec}}. Mas _$HOME_ é longo. Podemos usar algo mais curto - `~`{{}}

`cd /var/log`{{exec}}

`pwd`{{exec}}  

`cd ~`{{}}

`pwd`{{exec}}

>**Três novidades para você:**
>1. **~** é um atalho para o _diretório home_ do usuário logado e pode ser usado em qualquer situação em que se precise.
>2. O Linux permite o usop de variáveis que são 

E, finalmente, a versão mais curta...

bash
Copiar código
`cd /var/log`{{exec}}
`pwd`{{exec}}  
cd  
`pwd`{{exec}}
Sim, apenas cd é o suficiente para voltar ao diretório home.