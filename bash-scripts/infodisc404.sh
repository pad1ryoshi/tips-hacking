#!/bin/bash

# Script: infodisc404.sh
# Uso: infodisc404.sh domain

DOMAIN=$1

infoDisclosure() {
	if [ -z "$DOMAIN" ]; then
		read -p "Domain name: " DOMAIN
	fi

	curl -G 'http://web.archive.org/cdx/search/cdx' --data-urlencode "url=*.$DOMAIN/*" --data-urlencode 'collapse=urlkey' --data-urlencode 'output=text' --data-urlencode 'fl=original' > urls.txt

	cat urls.txt | uro | grep -E '\.xls|\.xml|\.xlsx|\.json|\.pdf|\.sql|\.doc|\.docx|\.pptx|\.txt|\.zip|\.tar\.gz|\.tgz|\.bak|\.7z|\.rar|\.log|\.cache|\.secret|\.db|\.backup|\.yml|\.gz|\.config|\.csv|\.yaml|\.md|\.md5|\.exe|\.dll|\.bin|\.ini|\.bat|\.sh|\.tar|\.deb|\.rpm|\.iso|\.img|\.apk|\.msi|\.dmg|\.tmp|\.crt|\.pem|\.key|\.pub|\.asc|\.env|\.swp|\.DS_Store|\.htpasswd|\.htaccess|\.ps1|\.jks|\.pfx|\.p12|\.der|\.properties|\.ini~|\.log~|\.out|\.sqlite|\.sqlite3|\.db3|\.ldb|\.psql|\.pl|\.cgi|\.rb|\.pyc|\.har|\.map|\.lst|\.cnf|\.dmp|\.tar\.bz2' | anew info-urls.txt
}

infoDisclosure
