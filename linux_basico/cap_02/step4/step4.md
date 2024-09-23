## Navegando nas Man Pages
Ao abrir uma página de manual, você estará no modo de leitura. Aqui estão algumas teclas úteis para navegar:

- Setas para cima/baixo: Move a página uma linha por vez.
Page Up/Down: Move a página uma tela por vez.

- G: Vai para o topo da man page.
- Shift+G: Vai para o fim da man page.
- /palavra: Pesquisa uma palavra dentro da man page.
- n: Vai para a próxima ocorrência da palavra pesquisada.
- q: Sai da man page.

Acesse o manual do comando `date`{{}}. Procure pela sessão _EXAMPLES_. O segundo exemplo diz como mostrar a hora em qualquer _timezone_. Use-o para exibir a data-hora com o _timezone_ igual a "America/Sao_Paulo".

`man date`{{exec}}

<details>
<summary>Tente fazer sem olhar a resposta</summary>
TZ='America/Sao_Paulo' date
</details><br>