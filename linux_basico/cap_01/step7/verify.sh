#!/bin/bash

# Verifica se o comando foi executado corretamente
output=$(ls -l /files 2>/dev/null)

# Verifica se a saída não está vazia
if [[ -n "$output" ]]; then
  echo "done"
else
  echo "O comando 'ls -l /files' não foi executado corretamente."
  exit 1
fi
