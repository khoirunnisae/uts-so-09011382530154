#!/bin/bash
# Nama: Khoirun Nisa
# NIM: 09011382530154
# Kelas: SKU3B

# path ke script backup utama
SCRIPT_PATH="./script/backup.sh"

# Loop sebanyak 3 kali
for i in {1..3}
do
	echo "Menjalankan backup ke-$i.."
	bash "$SCRIPT_PATH"

	# Beri jeda 3 detik antar eksekusi (kecuali pada eksekusi trakhir)
	if [ $i -lt 3 ]; then
		sleep 3
	fi
done

echo "Semua peroses backup loop selesai!"
