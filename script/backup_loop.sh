#!/bin/bash
# Nama: Khoirun Nisa
# NIM: 09011382530154
# Kelas: SKU3B

INTERVAL=60

# Perulangan terus menerus di background
while true; do
	bash "$(dirname "$0")/backup.sh"
	sleep "$INTERVAL"
done
