#!/bin/bash

echo "Scanning system for insecure permissions..."

# Find world-writable files
find /home -type f -perm -0002 > ../reports/insecure_files.txt

echo "Scan completed!"