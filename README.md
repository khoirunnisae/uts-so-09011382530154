# Tugas Besar UTS Sistem Oprasi

## 1. Identitas
- **Nama:** Khoirun Nisa
- **NIM:** 09011382530154
- **Kelas:** SKU3B

## 2. Deskripsi
Proyek ini berisi tiga shell script untuk membackup file catatan praktikum.

- `script/backup.sh` mencari semua file `.txt` (termasuk subdiraktori) di `~/data_09011382530154` memakai `find`, lalu mengarsipkan dan mengompresinya dengan `tar -czvf` menjadi `backup_09011382530154_TANGGAL_JAM.tar.gz` di `~/backup_09011382530154`, Isi arsip diperiksa dengan `tar -tzvf` tanpa mengekstrak. Setiap backup menambah satu baris ke `~/backup_09011382530154/backup.log` dengan format `tanggal jam | nama arsip | jumlah file | ukuran arsip`.
- `script/backup.loop.sh` menjalankan `backup.sh` berulang dengan `while true` dan `sleep $INTERVAL` (bawaan  60 detik), sehingga bisa berjalan di background dan dikendalikan dengan job control.
- `script/alias.sh` mendefinisikan alias `bk154` untuk menjalankan `backup.sh`.

## 3. Cara Menjalankan

```bash
cd ~/uts-so-09011382530154

# Backup satu kali
./script/backup.sh

# Backup berulang di background
./script/backup_loop.sh &

# Hentikan loop
kill %1

# Pasang alias lalu pakai
source script/alias.sh
bk154
...

## 4. Fitur pengembangan
Fitur yang dipilih: ISI_FITUR_ANDA
Cara membaca: ISI_CARA_MENCOBA

## 5. Bukti job control

```text
TEMPEL keluaran asli: ./script/backup_loop.sh &
TEMPEL keluaran asli: jobs -1
TEMPEL keluaran asli: fg (lalu Ctrl+Z)
TEMPEL keluaran asli: bg
TEMPEL keluaran asli: ps x
TEMPEL keluaran asli: kill %1

## 6. Kendala

- **Kendala 1:** (error yang benar-benar muncul) - **Solusi:** (cara Anda mengatasinya)
