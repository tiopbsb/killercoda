#!/bin/bash

# Preservo a última resposta do aluno
cat /tmp/last_output > /tmp/resposta

# Captura a saída do comando digitado pelo aluno (única linha, sem as datas e sem espaços excessivos)
actual_output=$(cat /tmp/resposta | tr '\n' ' ' | sed 's/[A-Za-z]\{3\} [0-9]\{1,2\} [0-9]\{1,2\}:[0-9]\{2\}//g' | sed 's/  */ /g; s/^ //; s/ $//')
echo "$actual_output" > /tmp/actual_output

# Define a saída esperada
# Em única linha e sem as datas (porque variam) para facilitarr a comparação.
expected_output="total 24K -rw-rw-r-- 1 marcos engenharia 11K modelo1.docx -rw-rw-r-- 1 anderson engenharia 4.4K modelo3.docx -rw-rw-r-- 1 ezequiel engenharia 2.9K modelo2.docx"
echo "$expected_output" > /tmp/expected_output

# Verifica se a saída do comando corresponde à saída esperada
if [[ "$actual_output" == "$expected_output" ]]; then
  exit 0  # sucesso
else
  exit 1  # falha
fi