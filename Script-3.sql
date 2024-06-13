-- Nama : Dimas
-- NIM : 22241030
-- MODUL 3

-- menggunakan database 
use mart_undikma;

-- ORDER BY 

-- mengambil nama produk dan qty urutkan berdasarakan qty
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty;

-- mengambil  nama produk dan qty urutkan berdasarkan qty diikuti dengan nama_produk

SELECT nama_produk, qty FROM tr_penjualan_dqlab
ORDER BY qty, nama_produk;

-- menampilkan nama produk, qty dan tgl transaksi 

SELECT * FROM tr_penjualan_dqlab ORDER BY qty,tgl_transaksi;

-- menampilkan semua kolom, ms penjualan

SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan;
SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat;

-- mengambil nama produk dan qty urutkan berdasarkan qty besar ke kecil
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC 

-- mengambil nama produk dan qty urutkan berdasarkan besar ke kecil, nama produk kecil ke besar
SELECT nama_produk, qty FROM tr_penjualan_dqlab
ORDER BY qty DESC, nama_produk ASC;

-- menampilkan nama produk, qty dan tgl transaksi 

SELECT * FROM tr_penjualan_dqlab ORDER BY tgl_transaksi DESC, qty ASC;
SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan DESC;
SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat DESC;

-- menggunakan hasil perhitungan pada ORDER BY 

SELECT nama_produk, qty, harga, qty*harga AS total_bayar 
FROM tr_penjualan_dqlab
ORDER BY total_bayar DESC;

-- pengurutan dengan ekspresi total harga
SELECT nama_produk,qty,harga,
diskon_persen, (diskon_persen/100)*harga AS diskon,
qty*(harga-(diskon_persen/100)*harga) AS total_bayar
FROM tr_penjualan_dqlab
ORDER BY total_bayar DESC;

-- mengambil nama produk, qty dari produk berawalan F urut berdasarkan qty besar ke kecil

SELECT nama_produk, qty FROM tr_penjualan_dqlab
WHERE nama_produk LIKE 'F%'
ORDER BY qty DESC;

-- mengambil nama produk, qty dari produk berawalan F urut berdasarkan qty besar ke kecil
SELECT * FROM tr_penjualan_dqlab WHERE diskon_persen != 0 ORDER BY harga DESC;
SELECT nama_produk, qty, harga FROM tr_penjualan_dqlab
WHERE harga >=100000 ORDER BY harga DESC;
SELECT nama_produk, qty, harga FROM tr_penjualan_dqlab 
WHERE harga >=100000 OR nama_produk LIKE 'T%' ORDER BY harga DESC;

-- FUNGSI AGREGASI 
-- hitung jumlah nilai qty dari seluruh row di tebel penjualan
SELECT sum(qty) AS total_qty FROM tr_penjualan_dqlab;

-- hitung jumlah seluruh row pada tabel penjualan
SELECT count(*) AS juumlah_row FROM tr_penjualan_dqlab;

-- hitung jumlah qty dan jumlah seluruh row pada tabel penjualan
SELECT sum(qty), count(*) FROM tr_penjualan_dqlab;

-- hitung rata-rata , nilai max dan nilai min dari qty pada tabel penjualan 
SELECT avg(qty), max(qty), min(qty) FROM tr_penjualan_dqlab;

-- hitung jumlah nilai unik dari nama produk di tabel penjualan
SELECT count(distinct nama_produk) FROM tr_penjualan_dqlab;

--  hitung jumlah nilai unik dan seluruh row dari tabel penjualan 
SELECT count(*), count(distinct nama_produk) FROM tr_penjualan_dqlab;

-- menampilkan field nama_produk dan field maksimum qty dari tabel penjualan
SELECT nama_produk, max(qty) FROM tr_penjualan_dqlab;

-- GROUP BY
-- ambil hasil pengelompokkan nilai kolom nama produk di tabel penjualan
SELECT nama_produk FROM tr_penjualan_dqlab
GROUP BY nama_produk;

SELECT nama_produk FROM tr_penjualan_dqlab;

-- ambil hasil pengelompokkan dari nama produk dan qty di tabel penjualan 
SELECT nama_produk, qty FROM tr_penjualan_dqlab
GROUP BY nama_produk, qty;

-- mengambil hasil penjumlah dari pengelompokkan nama produk terhadap semua row di tabel penjualan
SELECT nama_produk, sum(qty) FROM tr_penjualan_dqlab 
GROUP BY nama_produk 
ORDER BY sum(qty) DESC;

-- having
-- ambil jumlah qty > 2 dari hasil penjumlahan nama produk di tabel penjualan
SELECT nama_produk, sum(qty)
FROM tr_penjualan_dqlab 
GROUP BY nama_produk 
HAVING sum(qty) > 2;

-- latihan mandiri

-- melihat daftar nama produk di atas nilai 4
SELECT nama_produk, sum(qty)
FROM tr_penjualan_dqlab 
GROUP BY nama_produk
HAVING sum(qty) > 4;

-- melihat daftar nama produk sama dengan 9

SELECT nama_produk, sum(qty)
FROM tr_penjualan_dqlab 
GROUP BY nama_produk
HAVING sum(qty) = 9;

-- total penjualan , mengurutkan berdasarkan nilai penjualan
SELECT nama_produk,
qty*(harga-(diskon_persen/100)*harga) AS nilai
FROM tr_penjualan_dqlab
ORDER BY nilai DESC;


