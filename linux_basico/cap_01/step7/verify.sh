#!/bin/bash

# Captura a saída do comando digitado pelo aluno (única linha, sem as datas e sem espaços excessivos)
actual_output=$(cat /tmp/resposta | tr '\n' ' ' | sed 's/[A-Za-z]\{3\} [0-9]\{1,2\} [0-9]\{1,2\}:[0-9]\{2\}//g' | sed 's/  */ /g; s/^ //; s/ $//')

# Define a saída esperada
expected_output="total 24K -rw-rw-r-- 1 marcos engenharia 11K xxx xx xx:xx modelo1.docx -rw-rw-r-- 1 ezequiel engenharia 4.4K xxx xx xx:xx modelo2.docx -rw-rw-r-- 1 anderson engenharia 2.9K xxx xx xx:xx modelo3.docx"

# Verifica se a saída do comando corresponde à saída esperada
if [[ "$actual_output" == "$expected_output" ]]; then
  echo 1  # sucesso
else
  echo 0  # falha
fi