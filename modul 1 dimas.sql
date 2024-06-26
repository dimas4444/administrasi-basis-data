-- Nama: Dimas
-- NIM: 22241030
-- Modul: 1

-- Akses Database
USE mart_undikma;

-- SELECT : Mengambil 1 Kolom Tabel
SELECT nama_produk FROM ms_produk_dqlab;

-- SELECT : mengambil lebih dari 1 kolom
SELECT nama_produk, harga FROM ms_produk_dqlab;

-- SELECT : Mengambil Semua Kololm
SELECT * FROM ms_produk_dqlab;

-- LATIHAN
-- Ambil kode Produk, nama produk, dari tabel produk
SELECT kode_produk, nama_produk FROM ms_produk_dqlab;
-- Ambil semua kolom dari tabel penjualan
SELECT * FROM  tr_penjualan_dqlab;

-- Ambil Semua Kolom Dari Tabel Penjualan


 -- PREFIX dan ALIAS
 -- PREFIX
 
 -- Ambil nama produk dengan prefix tabel
 SELECT ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;
 
 -- ambil nama produk dengan prefix data base - tabel
 SELECT mart_undikma.ms_produk_dqlab.nama_produk FROM ms_pelanggan_dqlab;
 
 -- ALIAS
 
 -- ALIAS pada kolom dengan AS 
 SELECT nama_produk as np FROM ms_produk_dqlab;
 -- ALIAS pada kolom tanpa AS
 SELECT nama_produk np FROM ms_produk_dqlab;
 
 -- ALIAS pada tabel dengan AS
 SELECT nama_produk FROM ms_produk_dqlab AS mpd;
 -- ALIAS pada tabel tanpa AS
 SELECT nama_produk FROM ms_produk_dqlab mpd;
 --  penggunaan ALIAS dan prefix 
 SELECT mpd.nama_produk np FROM ms_pro_dqlab mpd;
 
 -- CASE 1
 SELECT nama_pelanggan, alamat FROM ms_pelanggan_dqlab;

-- CASE 2
SELECT nama_produk, harga FROM ms_produk_dqlab;