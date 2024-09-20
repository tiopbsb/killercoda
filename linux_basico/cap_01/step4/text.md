## Ordenação
Obviamente, todas as listas podem ser ordenadas. No Linux não seria diferente.

O Linux nos permite listar arquivos usando várias opções de ordenação. O comando `ls`{{}} tem algumas opções integradas. O primeiro tipo de ordenação já observamos. Por padrão, o `ls`{{}} ordena os arquivos em ordem alfabética. Vamos tentar algo diferente.

Antes de começarmos, no entanto, há um conceito que precisamos abordar. O Linux tem diferentes `timestamps`{{}}, três, para ser exato:

- atime - o último momento em que o arquivo foi acessado.
- mtime - o último momento de modificação. Por modificação, queremos dizer mudanças no conteúdo do arquivo.
- ctime - o último momento de modificação dos metadados. Aqui nos referimos a mudanças de permissões, localização do arquivo, etc.

É essencial que você entenda isso.

### O que é um _timestamp_?

É a representação numérica do tempo. É o número de segundos passados desde a _Unix epoch_, que é meia-noite do dia 1º de janeiro de 1970.

> O timestamp 1 representa a data e hora 01/01/1970 00:00:01. A partir daí, o valor do temestamp é incrementado de 1 a cada segundo que passa. Ou seja, o timestamp de uma determinada data e hora é a quantidade de segundos desde 01/01/1970 00:00:00 até a referida data e hora.

Um exemplo de como ele é mostrado está abaixo:

```
$ date
Mon 01 Nov 2021 08:14:52 PM UTC
$ date +%s
1635797690
```

Bem, de quebra, aprendemos um novo comando - `date`{{}}. Basta dizer que esse comando mostra a data e hora atuais:

`date`{{exec}}

A primeira opção de ordenação será `-t`{{}}. Esse argumento ordena os arquivos pelo tempo da última modificação, com os arquivos mais recentes aparecendo primeiro.

Vamos tentar:

`ls -lt`{{exec}}

Usamos dois argumentos para observar melhor as coisas. Podemos especificar exatamente o tempo de modificação adicionando `u`{{}} à lista de argumentos. Mas, por favor, lembre-se de que, para imprimir essa informação corretamente, você deve usar `t`{{}} com outro argumento (neste caso, `u`{{}}).

`ls -ltu`{{exec}}

Ok, agora vamos listar e ordenar pelos metadados (_ ctime_  - mudança de metadados).

`ls -ltc`{{exec}}
Bem, não mudou muito, certo? Por favor, execute esses comandos e observe cuidadosamente a saída:

`touch oArquivoMaisNovo`{{exec}}
> O último comando cria um novo arquivo chamado `oArquivoMaisNovo`.

`ls -ltu`{{exec}}

`ls -ltc`{{exec}}

`echo "uma nova linha adicionada!" > arquivo02`{{exec}} 
> O último comando adiciona algo ao arquivo, alterando o seu conteúdo.

`ls -ltu`{{exec}}

`ls -ltc`{{exec}}

`chmod 444 arquivo.txt`{{exec}}
> O último comando muda as permissões do arquivo, alterando seus metadados.

`ls -ltu`{{exec}}

`ls -ltc`{{exec}}

Por favor, dedique um tempo para entender o que foi impresso e como. Usamos alguns comandos novos, mas não perca muito tempo com eles agora.

### Ordenar conteúdo por tamanho

OK, já sabemos como ordenar arquivos por tempo, agora vamos aprender como fazer isso por tamanho.

Como de costume, temos várias opções para isso.

Primeiro, executamos este comando:

`ls -s`{{exec}}

Isso mostra uma lista curta dos arquivos e o espaço alocado. Como já sabemos, podemos combinar esse argumento, `-s`{{}}, com outros. Vamos fazer isso:

`ls -ls`{{exec}}

Mas isso é o que você já tem por padrão, usando `ls -l`{{}}, certo? Não? Você está correto, a resposta é não. Dê uma olhada no início de cada linha, é onde você pode ver o que foi adicionado pelo `-s`{{}}.

Por que usamos `s`{{}}? Eu queria que você prestasse atenção aqui. Quando usamos o `S`{{}} maiúsculo, isso significa ordenar.

`ls -lS`{{exec}} isso ordena os arquivos por tamanho, começando pelos maiores.

> **Então, os argumentos são sensíveis a maiúsculas e minúsculas, como... tudo no Linux.**

Antes de usarmos o próximo comando, há um argumento a mais que precisamos aprender. Esse argumento é `--human-readable`{{}}, ou melhor, `-h`{{}}.

Vamos tentar:

`ls -lh`{{exec}} isso imprime o tamanho dos arquivos não em bytes, mas de forma mais legível, com K (KiloByte), M (MegaByte), ou G (GigaByte).

O `h`{{}} usa potências de 1024. Então, 1K é 1 elevado a 1024. Temos outra opção:

`ls -l --si`{{exec}} que usa potências de 1000. Mas... acho que ninguém usa isso. :)

Ok, vamos tentar ordenar com o parâmetro h:

`ls -lSh`{{exec}}