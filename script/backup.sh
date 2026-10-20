#!/bin/bash
# Nama: Khoirun Nisa
# Nim: 09011382530154
# Kelas: SKU3B

# Variabel Direktori & Log
SRC_DIR="$HOME/data_09011382530154"
BACKUP_DIR="$HOME/backup_09011382530154"
LOG_FILE="$BACKUP_DIR/backup.log"
TEMP_LIST="/tmp/file_list_$$.txt"

# 1. Buat direktori tujuan backup jika belum ada
mkdir -p "$BACKUP_DIR"

# 2. Cari semua file .txt di direktori sumber (termasuk subdirektori)
find "$SRC_DIR" -type f -name "*.txt" > "$TEMP_LIST"

#Hitung jumlah file .txt yang ditemukan
TOTAL_FILES=$(wc -l < "$TEMP_LIST")

# Format waktu
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
LOG_TIME=$(date +"%Y-%m-%d %H:%M:%S")
ARCHIVE_NAME="backup_09011382530154_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="$BACKUP_DIR/$ARCHIVE_NAME"

# 3. Pengarsipan dan komposisi (.tar.gz)
tar -czvf "$ARCHIVE_PATH" -T "$TEMP_LIST"

# 4 Verifikasi isi arsip (tampilan isi arsip tanpa mengekstrak)
echo "-- Verifikasi Isi Arsip ---"
tar -tzvf "$ARCHIVE_PATH"

#Hitung ukuran arsip
FILE_SIZE=$(du -h "$ARCHIVE_PATH" | cut -f1)

# 5. Catat log ke fila log (satu baris)
echo "$LOG_TIME | $ARCHIVE_NAME | $TOTAL_FILES file | $FILE_SIZE" >> "$LOG_FILE"

# Hapus file sementara
rm -f "$TEMP_LIST"

# 6. Fitur Pengembangan: Rotasi Arsip (Menyimpan 5 arsip terbaru saja)
cd "$BACKUP_DIR" || exit
ls -t backup_09011382530154_*.tar.gz 2>/dev/null | tail -n +6 |xargs -r rm --
