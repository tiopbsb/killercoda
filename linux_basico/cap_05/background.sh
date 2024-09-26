#!/bin/bash

# cria os usuários com a pasta home
sudo useradd -m -s /bin/bash aluno

# definir a senha para o usuário aluno
echo "aluno:senha" | sudo chpasswd

# desabilitar pedido de senha para comando sudo
echo "aluno ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/aluno

# adicionar o usuário ao grupo de 'sudo'
sudo usermod -aG sudo aluno

# ajustar as permissões
sudo chmod 0440 /etc/sudoers.d/aluno 

# loga como aluno para gerar o arquivo
sudo su - aluno << 'EOF'

# Nome do arquivo a ser gerado
arquivo="numeros.txt"

# Limpa o arquivo se já existir
#> "$arquivo"

# Adiciona os números de 1 a 100 ao arquivo
for i in {1..100}; do
    echo "$i" >> "$arquivo"
done

# Gera 9900 números aleatórios entre 1 e 100 (para totalizar 10.000)
for i in {1..9900}
do
  echo $((RANDOM % 100 + 1)) >> "$arquivo"
done 

# Mistura o arquivo
shuf "$arquivo" -o "$arquivo"

# Sai do shell
exit

EOF

# Para capturar a saída do último comando digitado (para checagem)

PROMPT_COMMAND='LAST_COMMAND=$(history 1 | sed "s/^ *[0-9]* *//"); eval "$LAST_COMMAND" &> /tmp/last_output_tmp; cp /tmp/last_output_tmp /tmp/last_output'
echo "PROMPT_COMMAND='${PROMPT_COMMAND}'" >> /home/aluno/.bashrc

# Adiciona a faixa de boas-vindas no shell

boas_vindas=$(cat <<EOF

clear
data=\$(date '+%a, %d %b %y, %H:%M UTC')

bold_green='\e[1;32m'
NC='\e[0m'

echo -e "\$bold_green"

echo -e "  __  .__                ___.          ___.    "
echo -e "_/  |_|__| ____ ______   \\\\_ |__   _____\\\\_ |__  "
echo -e "\\\\   __\\\\  |/  _ \\\\\\\\____  \\\\   | __ \\\\ /  ___/| __ \\\\ "
echo -e " |  | |  (  <_> )  |_> >  | \\\\_\\\\ \\\\___  \\\\ | \\\\_\\\\ \\\\"
echo -e " |__| |__|\\\\____/|   __/   |___  /____  >|___  /"
echo -e "                |__|          \\\\/     \\\\/     \\\\/ "
echo -e " "
echo -e "# Bem-vindo ao nosso curso de Linux Básico"
echo -e " "
echo -e "# \$data"
echo -e " "

echo -e "\$NC "

EOF
)

# Adicionar conteúdo ao final do .bashrc do aluno
echo "$boas_vindas" >> /home/aluno/.bashrc


# prepara login como 'aluno'
echo "sudo su - aluno" >> /root/.bashrc

exit 0