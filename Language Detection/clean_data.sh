#!/bin/sh
for file in langdetect/*; do
    [ -f "$file" ] || continue
    echo "Processing ${file}"
    sort -u "${file}" > "${file}.clean"
    rm "${file}"
    mv "${file}.clean" "${file}"
done