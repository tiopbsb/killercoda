## Mais alguns argumentos
Para finalizar, alguns argumentos úteis. Dê uma olhada nesles:

- `ls -al --author`{{exec}} imprime o nome de usuário do autor do arquivo.
- `ls -ld`{{exec}} imprime o nome do diretório ao invés de seu conteúdo. Ex.: `ls -ld planilhas`.
- `ls -ali`{{exec}} imprime inodes (haverá uma lição sobre inodes).
- `ls -alR`{{exec}} imprime recursivamente todos os subdiretórios.
- `ls -alr`{{exec}} imprime a lista em ordem inversa. Então,
- `ls -alSr`{{exec}} o que é mostrado?

> **Nota:** Em alguns casos (raros) o Sistema Operacional pode distinguir o autor (criador) do proprietário de um arquivo.

### Os caracteres coringas
Coringas (ou _wildcards_) são caracteres especiais usados para corresponder a padrões em nomes de arquivos e diretórios. Eles são extremamente úteis para realizar ações sobre múltiplos arquivos ou diretórios que correspondam a um certo padrão.

Aqui estão os principais coringas e seus usos:

#### Asterisco ( ***** )
O `*`{{}} representa qualquer sequência de caracteres (incluindo nenhum). Ele é amplamente usado para selecionar todos os arquivos que correspondam a um certo padrão.

`ls -l arq*`{{exec}}

#### Interrogação ( **?** )
O `?`{{}} representa um único caractere. Ele é usado para combinar nomes de arquivos que tenham um determinado número de caracteres e onde apenas um caractere específico varia.

`la -l arquivo0?`{{exec}}

#### Colchetes ( **[]** )
Os colchetes permitem que você especifique um conjunto de caracteres que pode aparecer em uma determinada posição.

`la -l arquivo0[24]`{{exec}}

#### Hífen dentro dos colchetes ( **[x-y]** )
Dentro de colchetes, o hífen permite que você defina um intervalo de caracteres (entre _x_ e _y_).

`la -l arquivo0[2-4]`{{exec}}

#### Exclamação ou Circunflexo dentro de colchetes ( **[!]** ou **[^]** )
Colocando `!`{{}} ou `^`{{}} logo após o colchete de abertura ([!...] ou [^...]), você pode corresponder a qualquer caractere que não esteja dentro dos colchetes.

`la -l arquivo0[^24]`{{exec}}

#### Chaves ( **{}** )
As chaves são usadas para expandir um conjunto de opções e criar padrões mais complexos. Diferente dos outros coringas, elas não são padrões globais, mas são expandidas pelo próprio shell antes de passar os argumentos para o comando.

Liste todos os arquivos do diretório `cartas/`{{}}

`ls -l cartas/`{{exec}}

Agora, usando os coringos, liste todos os arquivos do diretório `cartas/`{{}} que comecem por _carta_ e possuem a extensão _.doc_ ou _.txt_.

<details>
<summary>Tente fazer sem olhar a resposta</summary>
ls -l cartas/carta*.{doc,txt}
</details><br>

### Conclusão
Dois últimos comandos neste cenário:

`ls --version`{{exec}} imprime a versão do aplicativo `ls`{{}}.

Todos os comandos que usamos aqui estão disponíveis na ajuda. Como obter ajuda?

`ls --help`{{exec}}
