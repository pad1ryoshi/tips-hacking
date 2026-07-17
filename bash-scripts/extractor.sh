#!/bin/bash

# Usage: ./extractor.sh <URL>

echo "Extract endpoints from a URL"
echo

if [ -z "$URL" ]; then

        read -p "URL: " URL
        echo
        curl -s $URL | grep -Po "(\/)((?:[a-zA-Z\-_\:\.0-9\{\}]+))(\/)*((?:[a-zA-Z\-_\:\.0-9\{\}]+))(\/)((?:[a-zA-Z\-_\/\:\.0-9\{\}]+))" | sort -u
fi
