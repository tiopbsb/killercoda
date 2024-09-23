## Como obter mais detalhes

Certo. Sabemos como obter a lista de itens de um diretório.

Mas isso ainda é pouco informativo. Sim, temos uma visualização; mas sem detalhes.

Antes de aprendermos como obter mais detalhes, há um comando que vamos executar agora para limpar a tela:

`clear`{{exec}} ou `ctrl + l`{{}}

O que ele faz? Bem, ele limpa a tela.

Agora, vamos finalmente aprender mais sobre o comando `ls`{{}}. Aqui está sua SINOPSE:

> **ls** [OPTION]... [FILE]...

Note que ele aceita dois tipos de parâmetros:

- _OPTION_ - são as opções de listagem; e
- _FILE_ - arquivo ou diretório (neste caso, o seu conteúdo) que se deseja listar.

**Obs.: a ordem dos parâmetros não faz diferença no comando.**

Há várias opções para o parâmetro _OPTION_ que podemos adicionar para alterar a saída do comando.

> Algo importante a entender: o que passamos após o comando são **argumentos**. Não são chaves, parâmetros, etc. Podemos ouvir esses termos, mas, para aprender a trabalhar corretamente com Linux, devemos nomear os elementos com a convenção adequada.

Nosso primeira opção nos dará mais detalhes. Execute:

`ls -l`{{exec}}

Aqui o `-`{{}} indica que passaremos opções. Existem duas maneiras de fazer isso:

- `-`{{}} Um traço informa ao sistema que vamos passar uma opção de uma letra, como `-a`{{}}.
- `--`{{}} Dois traços indicam que a opção conterá mais de uma letra, geralmente uma palavra em inglês, como `--all`{{}}.

O `-l`{{}} significa "formato de listagem longa" (long listing format).

### O que temos aqui?

O formato contém algumas colunas. Vamos tentar entender o que elas representam:

- Permissões: aqui podemos ver que tipo de permissão o objeto possui. Trabalharemos com permissões... em breve :)
- Número de links físicos (_hard links_): por padrão, todo objeto tem um _hard link_. O que são links? Vamos aprender isso mais a frente.
- Proprietário: o dono do arquivo (ou link, ou diretório, etc). Isso não significa quem o criou, mas quem o possui no momento. **No Linux, todo objeto (arquivo, diretório, etc) tem um dono!**.
- Grupo: O proprietário pertence a um grupo (de usuários). Essa informação também está aqui. Isso significa que nossos "companheiros de grupo" têm acesso específico ao arquivo.
- Tamanho: O tamanho do arquivo em bytes.
- Data e hora da última modificação do arquivo.
- Nome do arquivo.

Listando o conteúdo do diretório documentos.

`ls -l documentos`{{exec}}

Lembre-se que a ordem dos parâmetros não importa.

`ls documentos -l`{{exec}}

### Proprietário e grupo
Por enquanto, basta saber que na listagem acima vemos os nomes dos usuários e grupos. O sistema mantém e traduz essas informações de representações numéricas. Esses números são o UID (_User Identifier_ ) para o usuário e o GID (_Group Identifier_) para o grupo. Podemos listar essas informações de forma numérica, executando o comando:

`ls -n`{{exec}}

Esse comando funciona como o `ls -l`{{}}, mas ele altera os nomes amigáveis para _UIDs_ e _GIDs_.

> Agora, listamos todos os arquivos em ordem alfabética.

 Mas... será mesmo que estamos vendo todos os arquivos?