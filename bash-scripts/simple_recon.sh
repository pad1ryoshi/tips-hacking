#!/bin/bash

# Script: simple_recon.sh
# Uso: ./simple_recon.sh domain


recon() {
	DOMAIN=$1

	if [ -z "$DOMAIN" ]; then
		read -p "Domain name: " DOMAIN
	fi

	subfinder -silent -d $DOMAIN | anew subs.txt && cat subs.txt | httpx -silent -td -sc --follow-redirects | anew subs-alive.txt
}

recon
