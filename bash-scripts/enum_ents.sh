#!/bin/bash

# Script: enum_ents.sh
# Uso: execute o script ./enum_ents.sh e escolha o modo passivo (1) ou modo ativo (2)

read -p "Domain name: " dominio

echo "Método de enumeração:"
echo "1) Subfinder + dnsx"
echo "2) Dnsx + nodes"
read -p "Digite 1 ou 2: " metodo

case $metodo in
    1)
        echo "Passive mode"
        subfinder -d "$dominio" -silent | dnsx -rcode noerror -silent | anew domains-passive-ent.txt
        ;;
    2)
        read -p "Node wordlist: " wordlist

        if [ ! -f "$wordlist" ]; then
            echo "Erro: O arquivo de wordlist '$wordlist' não foi encontrado."
            exit 1
        fi

        echo "Active mode"
        dnsx -w "$wordlist" -d "$dominio" -rcode noerror -silent | anew domains-active-ent.txt
        ;;
    *)
        echo "Opção invál -> 1 ou 2."
        exit 1
        ;;
esac
