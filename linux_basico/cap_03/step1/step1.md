# Como criar um diretório

Primeiro, vamos verificar o que temos no nosso diretório atual.

`ls -l`{{exec}}

Para criar um diretório, precisamos usar o comando `mkdir`{{}} (**M**a**K**e **DIR**ectory).

Ok, vamos criar uma estrutura.

`mkdir meudir`{{exec}} cria um diretório com o nome fornecido.

Agora imagine que queremos criar vários diretórios com nomes semelhantes. Podemos criar diretórios usando um comando após o outro, repetindo várias vezes. Mas certamente você lembra da aula sobre os _coringas_.

Vamos criar 10 diretórios, começando com testdir1 até testdir10. Como fazer isso em um único comando?

<details>
<summary>Tente fazer sem olhar a resposta</summary>
mkdir testdir{1..10}
</details><br>

Confirme se deu certo com `ls -l`{{}}.

Ok, outra abordagem.

`mkdir meu_dir outro_dir terceiro_dir`{{exec}}

Isso cria três diretórios diferentes.

Confirme se deu certo.

### E para criar um diretório dentro de outro? 
Para criar uma estrutura mais profunda, temos que usar a opção `-p`{{}}. Isso nos permite criar toda a estrutura, sem a necessidade de criar o diretório pai primeiro.

`mkdir -p dir_pai/dir_filho{01..100}`{{exec}}

O que fizemos aqui? Com `-p`{{}} permitimos que o sistema crie o diretório pai, e a segunda parte já conhecemos. Sob o _dir_pai_, criamos 100 diretórios, de _dir_filho001_ até _dir_filho100_. Observe como o sistema formatou isso de maneira conveniente! Especificamos 01, e o sistema criou diretórios mantendo três dígitos, como em dir_filho100. Bem inteligente da parte dele.

Vamos ver o que criamos.

`ls -l`{{exec}}

`ls -l dir_pai`{{exec}}
