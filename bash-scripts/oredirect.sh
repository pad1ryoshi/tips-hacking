#!/bin/bash

# Script: oredirect.sh
# Uso: oredirect.sh domain

DOMAIN=$1

oredir() {
        if [ -z "$DOMAIN" ]; then
                read -p "Domain name: " DOMAIN
        fi

        curl -G 'http://web.archive.org/cdx/search/cdx' --data-urlencode "url=*.$DOMAIN/*" --data-urlencode 'collapse=urlkey' --data-urlencode 'output=text' --data-urlencode 'fl=original' > urls.txt

        cat urls.txt | uro | grep -E 'return=|return_url=|rUrl=|cancelUrl=|url=|redirect=|follow=|goto=|returnTo=|returnUrl=|r_url=|history=|goback=|redirectTo=|redirectUrl=|redirUrl=' | anew redirects-urls.txt && rm urls.txt
}

oredir
