# Tugas Besar UTS Sistem Oprasi

## 1. Identitas
- **Nama:** Khoirun Nisa
- **NIM:** 09011382530154
- **Kelas:** SKU3B

## 2. Deskripsi
Script ini dirancang untuk melakukan pencarian file `.txt` pada direktori sumber secara otomatis, mengarsipkan dan mengompresikannya menjadi file `.tar.gz` dengan format penanaman sesuai NIM dan waktu , mencatat log ke `backup.log`, serta mendukung background loop dan job control.

## 3. Cara Menjalankan

- **Memberikan izin eksekusi script:**
 `chmod +x script/*.sh`
- **Menjalankan backup sekali:**
 `./script/backup.sh`
- **Menjalankan backup berulang (background):**
 `./script/backup_loop.sh &`
- **Menggunakan alias:**
 `bk154`

## 4. Fitur pengembangan
- **Rotasi arsip:** Menyimpan 5 arsip terbaru dan menghapus terbaru dan menghapus arsip lama secara otomatis.

## 5. Bukti job control
```bash
./script/backup_loop.sh &
jobs -l
fg (Tekan Ctrl+Z)
bg
ps x
kill <PID>
```

## 6. Kendala

- Kendala: Terjadi kendala autentikasi token saat menjalankan perintah git push dari VirtualBox.
- Solusi: Membuat Personal Access Token (classic) baru pada akun GitHub dengan mencentang scope repo.
