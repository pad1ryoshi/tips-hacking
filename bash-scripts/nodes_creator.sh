#!/bin/bash

# Script: node_creator.sh
# Uso: ./node_creator.sh node.txt domain

NODE=$1
DOMAIN=$2

nodesCreator() {
	if [ -z "$NODE" ] || [ -z "$DOMAIN" ]; then
		read -p "Node path: " NODE
		read -p "Domain name: " DOMAIN
	fi

	cat $NODE | sed "s/$/.$DOMAIN/g" > wordlist.txt 
}

nodesCreator
