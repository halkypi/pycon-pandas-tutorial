#!/bin/bash

set -e
cd "$( dirname "${BASH_SOURCE[0]}" )"

# The original frozen IMDb dataset is also available over HTTPS.
base=https://www.nic.funet.fi/pub/mirrors/ftp.imdb.com/pub/frozendata
for name in actors actresses genres release-dates; do
    if [ ! -s "$name.list.gz" ]; then
        curl --fail --location --retry 2 "$base/$name.list.gz" -o "$name.list.gz.part"
        mv "$name.list.gz.part" "$name.list.gz"
    fi
done

python ./BUILD.py
