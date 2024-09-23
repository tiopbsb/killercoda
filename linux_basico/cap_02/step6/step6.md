## Opções úteis do comando _man_
Aqui estão algumas opções do comando _man_ que podem ser úteis:

`-k palavra`{{}}: Faz uma pesquisa por palavra-chave em todas as man pages. Isso é útil quando você não sabe exatamente o nome do comando que deseja usar.

`man -k disk`{{exec}}

`-f comando`{{}}: Mostra um resumo curto sobre um comando (equivalente ao comando _whatis_).

`man -f ls`{{exec}}

`--help`{{}}: Exibe as opções de ajuda para o próprio comando man.

`man --help`{{exec}}

### Exemplos práticos

Consultar a página de manual de um comando:

`man grep`{{exec}}

Isso abrirá a página de manual do comando grep, exibindo todas as opções de pesquisa de texto disponíveis.

Procurar _man pages_ por palavras-chave:

`man -k copy`{{exec}}

Isso exibirá uma lista de _man pages_ relacionadas à palavra "_copy_", como o comando cp para copiar arquivos.

Consultar uma seção específica:

`man 3 printf`{{exec}}

Esse comando exibirá a página de manual da função _printf_ na seção de bibliotecas (seção 3).

### Dicas e Truques
- Memorize as teclas de navegação: o _man_ usa o _pager less_ por padrão. Aprender as teclas de navegação pode acelerar sua consulta.

- Use `man -k`{{}} para descobrir comandos: se você não souber o comando exato que precisa, a busca por palavra-chave pode ser muito útil.

- Combine _man_ com redirecionamento: Você pode redirecionar a saída de uma _man page_ para um arquivo para posterior leitura:

`man ls > manual_do_ls.txt`{{exec}}

> **Nota.** Você não precisa de um ambiente Linux para consultar o manual dos comandos.
> Digite no _google_ o manual que deseja (ex.: "[man mkdir](https://www.google.com/search?q=man+mkdir))" e várias opções de sites estarão disponíveis para consulta.
> Entre eles, o [**man7.org**](https://man7.org/linux/man-pages/) e o [**die.net**](https://linux.die.net/man/).
