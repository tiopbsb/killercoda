## Os caracteres coringas
Coringas (ou _wildcards_) são caracteres especiais usados para corresponder a padrões em nomes de arquivos e diretórios. Eles são extremamente úteis para realizar ações sobre múltiplos arquivos ou diretórios que correspondam a um certo padrão.

Aqui estão os principais coringas e seus usos:

### Asterisco ( **\*** )
O `*`{{}} representa qualquer sequência de caracteres (incluindo nenhum). Ele é amplamente usado para selecionar todos os arquivos que correspondam a um certo padrão.

`ls -l arq*`{{exec}}

### Interrogação ( **?** )
O `?`{{}} representa um único caractere. Ele é usado para combinar nomes de arquivos que tenham um determinado número de caracteres e onde apenas um caractere específico varia.

`la -l arquivo0?`{{exec}}

### Colchetes ( **[ ]** )
Os colchetes permitem que você especifique um conjunto de caracteres que pode aparecer em uma determinada posição.

`la -l arquivo0[24]`{{exec}}

### Hífen dentro dos colchetes ( [x **-** y] )
Dentro de colchetes, o hífen permite que você defina um intervalo de caracteres (entre _x_ e _y_).

`la -l arquivo0[2-4]`{{exec}}

### Circunflexo dentro de colchetes ( [ **^** ] )
Colocando `^`{{}} (ou ainda o `!`{{}}) logo após o colchete de abertura ([^...] ou [!...]), você pode corresponder a qualquer caractere que não esteja dentro dos colchetes.

`la -l arquivo0[^24]`{{exec}}

### Chaves ( **{ }** )
As chaves são usadas para expandir um conjunto de opções e criar padrões mais complexos. Diferente dos outros coringas, elas não são padrões globais, mas são expandidas pelo próprio shell antes de passar as opções para o comando.

`ls -l arquivo0{2,3}`{{exec}}
