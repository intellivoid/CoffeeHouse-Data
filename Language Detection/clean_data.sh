#!/bin/sh
for file in langdetect/*; do
    [ -f "$file" ] || continue
    sort -u "${file}" > "${file}.clean"
    rm "${file}"
    mv "${file}.clean" "${file}"
done