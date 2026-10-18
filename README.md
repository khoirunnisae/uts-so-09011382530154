cat << 'EOF' > README.md
# Tugas Besar UTS Sistem Oprasi

## 1. Identitas
* **Nama:** Khoirun Nisa
* **NIM:** 09011382530154
* **Kelas:** SKU3B

## 2. Deskripsi
Script ini berfungsi untuk melakukan pencarian file `.txt` secara otomatis pada direktori sumber `~/data_0901138253015`, mengarsipkannya dalam format`.tar.gz`, dan mencatat riwayat eksekusi ke file log `~/backup_09011382530154/backup.log`[span_0](start_span)[span_0](end_span)[span_1](start_span)[span_1](end_span).

## 3. Cara menjelaskan
* Menjalankan backup utama: `./script/backup.sh`[span_2](start_span)[span_2](end_span)
* Menjalankan backup berulang: `./script/backup_loop.sh`[span_3](start_span)[span_3](end_span)[span_4](start_span)[span_4](end_span)
* Menjalankan alias: `source script/alias.sh`lalu ketik `bk154`[span_5](start_span)[span_5](end_span)[span_6](start_span)[span_6](end_span)[span_7](start_span)[span_7](end_spam)

## 3. Cara Menjalankan
* Menjalankan backup utama: `./script/backup.sh`
* Menjalankan backup berulang: `./script/backup_loop.sh`
* Menjalankan alias: `source script/alias.sh` lalu ketik `bk154`

## 4. Bukti Job Control
```text
$ ./script/backup_loop.sh &
[1] 12345
$ jobs -l
[1]+ Ruuning			./script/backup_loop.sh &
$ fg %1
$ Ctrl+Z
[1]+ Stopped			./script/backup_loop.sh
$ bg %1
$ kill 12345
