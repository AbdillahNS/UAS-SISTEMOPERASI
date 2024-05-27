#!/bin/bash

# Nama : Abdillah Noer Said
# NIM : 2341720018

function lihatFile() {
    echo "File dalam direktori:"
    ls
}

function tambahFile() {
    echo -n "Masukkan nama file yang ingin Anda buat:"
    read nama_file
    touch "$nama_file"
    echo "File \"$nama_file\" berhasil dibuat."
}

function hapusFile() {
    echo -n "Masukkan nama file yang ingin dihapus: "
    read nama_file
    
    if [ -f "$nama_file" ]; then
        rm -f "$nama_file"
        echo "File '$nama_file' telah dihapus."
    else
        echo "File '$nama_file' tidak ditemukan."
    fi
}

function downloadManager() {
    echo -n "Masukkan URL file yang ingin diunduh: "
    read url
    wget -c "$url"
}

function cekJaringan() {
    alamat="google.com"
    echo "Melakukan tes PING jaringan..."

    ping -c 4 "$alamat"

    if [ $? -eq 0 ]; then
        echo "Jaringan terhubung."
    else
        echo "Jaringan terputus."
    fi
}

while true; do
    echo "========================================="
    echo "Daftar Menu:"
    echo "1. Lihat file"
    echo "2. Tambah file"
    echo "3. Hapus file"
    echo "4. Downlaod Manager"
    echo "5. Cek Jaringan"
    echo "0. Keluar"
    echo "====================="

    read -p "Masukkan Pilihan: " menu

    case $menu in
        1) lihatFile ;;
        2) tambahFile ;; 
        3) hapusFile ;;
        4) downloadManager ;;
        5) cekJaringan ;;
        0) exit 0 ;;
        *) echo "Menu yang Anda masukkan tidak ada" ;;
    esac
done