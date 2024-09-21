#!/bin/bash

# Captura a saída do comando 'ls -lsh /files'
actual_output=$(ls -lsh /files 2>/dev/null)

# Define a saída esperada
expected_output="total 24K
 12K -rw-rw-r-- 1 marcos   engenharia  11K Sep 21 14:32 modelo1.docx
8.0K -rw-rw-r-- 1 ezequiel engenharia 4.4K Sep 21 14:32 modelo2.docx
4.0K -rw-rw-r-- 1 anderson engenharia 2.9K Sep 21 14:32 modelo3.docx"

# Verifica se a saída do comando corresponde à saída esperada
if [[ "$actual_output" == "$expected_output" ]]; then
  echo "done"
else
  echo "Falha: O comando não foi executado corretamente ou a saída não corresponde."
  exit 1
fi