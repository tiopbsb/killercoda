# Criando arquivo(s)
Antes de qualquer coisa, vamos dar uma olhada no nosso diretório.

`ls`{{exec}}

Para criar um arquivo vazio no Linux, usamos o comando `touch`{{}}. Vamos fazer isso.

`touch testfile`{{exec}}

Temos o arquivo?

`ls -l testfile`{{exec}}

Sim, o arquivo existe. Também podemos ver que o arquivo tem tamanho 0 (zero), em outras palavras, está vazio.

Lembra dos _dotfiles_? Vamos criar um arquivo oculto.

`touch .myscript.sh`{{exec}}

Como é oculto, não será listado com um simples `ls`{{exec}}. Então qual _opção_ usaremos para listá-lo?

<details>
<summary>Resposta</summary>
ls -a
</details><br>

E claro, assim como no cenário anterior, podemos criar vários arquivos de uma vez.

`touch my{01..100}file`{{exec}}

Vamos usar o caractere curinga '**\***' para listar todos eles.

`ls my*file`{{exec}}

Podemos, também, passar os nomes em sequência.

`touch arquivo1 arquivo2 arquivo01`{{exec}}

Como faríamos para listar apenas `arquivo1`{{}} e `arquivo2`{{}} ?

<details>
<summary>Resposta</summary>
ls arquivo?
</details><br>

Agora, vamos criar uma estrutura.

```
mkdir testdir
touch testdir/mytest{01..1000} testdir/file{01..1000}
```{{exec}}

Você sabe o que acabamos de fazer?
