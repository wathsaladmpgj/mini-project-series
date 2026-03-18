#!/bin/bash

echo "Fixing insecure permissions..."

while read file; do
    chmod 750 "$file"
    echo "Fixed: $file" >> ../logs/fix.log
done < ../reports/insecure_files.txt

echo "Fixing completed!"