## Redirecionar **para** um arquivo

Agora, vamos (re)ver como redirecionar a saída para um arquivo.

Normalmente, toda a saída vai para a tela. Aqui entra o conceito de _streams_, mas isso será explicado em outro laboratório. Por enquanto, vamos assumir que toda a saída vai para a tela.

Na tela, listamos os arquivos. Vamos fazer isso de novo:

`ls -al`{{exec}}

### `>`{{}}

Agora, vamos redirecionar isso para um arquivo:

`ls -al > lista_diretorio.txt`{{exec}}

O que fizemos aqui?

- **`ls -al`{{}}**. já conhecemos este comando.
- **`>`{{}}**. Redireciona toda a saída do lado esquerdo do símbolo para o arquivo no lado direito do símbolo.
- **`lista_diretorio.txt`{{}}**. O (nome do) arquivo para o qual a saída redirecionada será enviada.

Ok, vamos ver o que há no arquivo:

`cat lista_diretorio.txt`{{exec}}

O arquivo contém exatamente a saída do comando `ls -al`{{}}.

Agora, vamos adicionar mais conteúdo ao arquivo. Temos um arquivo pequeno, _.profile_. Vamos usar o `cat`{{}} para mostrá-lo e adicionar a saída ao arquivo _lista_diretorio.txt_.

`cat .profile`{{exec}}

`cat .profile > lista_diretorio.txt`{{exec}}

Agora é hora de ver o arquivo!

`cat lista_diretorio.txt`{{exec}}

Humm... espere... Deveríamos ter adicionado conteúdo, não sobrescrevido! O que aconteceu?

Bem, a redireção com **`>`{{}}** faz o seguinte:

- Se o arquivo não existir, ele será criado.
- Adiciona o conteúdo da saída redirecionada.
- Se o arquivo já existir ele será limpo e a saída redirecionada será escrita no arquivo vazio.

Agora você entendeu o que aconteceu? Ok, como podemos adicionar conteúdo ao invés de sobrescrever o arquivo? Isso é possível?

Sim, é possível.

### `>>`{{}}

Precisamos usar outra sintaxe para redirecionar: `>>`{{}}.

Vamos recomeçar:

`ls -al > lista_diretorio.txt`{{exec}}

`echo '===== esta linha é um separador! =====' >> lista_diretorio.txt`{{exec}}

`cat .profile >> lista_diretorio.txt`{{exec}}

Vamos conferir:

`cat lista_diretorio.txt`{{exec}}

Resumo sobre redirecionamentos

Você precisa se lembrar que:
1. _**>**_ criará um arquivo (se ele não existir) ou sobrescreverá todos os dados como se fosse um arquivo novo. 
2. _**>>**_ funciona de maneira semelhante, no entanto, se já houver conteúdo no arquivo, essa redireção adicionará a saída do comando ao final do conteúdo existente.