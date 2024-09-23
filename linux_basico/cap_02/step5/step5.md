## Seções do manual
As _man pages_ estão divididas em várias seções numeradas, onde cada seção cobre diferentes tipos de documentação. Aqui estão algumas seções principais:

1. Comandos do usuário: Comandos que podem ser usados diretamente no shell.
2. Chamada de sistema: Funções que fazem chamadas diretas ao kernel do sistema.
3. Bibliotecas: Funções disponíveis nas bibliotecas do sistema.
4. Dispositivos: Descrição dos arquivos de dispositivo.
5. Formatos de arquivos: Descrição dos formatos de arquivo.
6. Jogos: Jogos e brincadeiras disponíveis no sistema.
7. Miscelânea: Diversas informações úteis.
8. Comandos administrativos: Comandos usados por administradores de sistema.

Para acessar uma seção específica, basta especificar o número antes do comando:

`man 5 passwd`{{exec}}

Neste exemplo, o comando exibe a página do manual da seção 5 para o arquivo `passwd`, explicando seu formato.

>Quando o parâmetro _sessão_ não é passado, o sistema assume a sessão padrão (1).

Observe a diferença para `man passwd`{{}}