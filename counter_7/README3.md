# TUGAS 9

Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

*Read this in other languages: [Indonesian](README.md), [English](README.en.md)*

## COUNTER_7

### (*) Pendahuluan 
Pada tugas ini, kita akan mengintegrasikan mywatchlist yang sudah kita buat pada tugas 3 sebelumnya ke Flutter. Kita akan membuat sebuah pemanggilan web service hingga menampilkannya ke halaman Flutter yang kita buat. Akan tetapi sebelum melakukan pemanggilan web service, kita perlu mendefinisikan model yang kita gunakan ketika melakukan pemanggilan web service. Model pada Flutter menggunakan prinsip class seperti layaknya yang sudah dipelajari pada DDP2 bagian OOP. Data yang telah di buat akan di load dan ditampilkan melalui fetching data dari web service. Hal ini kemudian akan menampilkan data ke aplikasi yang telah kita buat sebelumnya.

### (*) Pengambilan Data JSON
Data dapat diambil tanpa menggunakan JSON, hanya saja ada kemungkinan data yang dihasilkan tidak terstruktur. 

### (*) Widget yang digunakan
  - Async (future builder) : Widget yang membangun dirinya sendiri berdasarkan snapshot terbaru dari interaksi dengan Future
  - Column : Membuat tampilan berbentuk kolom
  - Row : Membuat tampilan berbentuk baris
  - Padding : Widget yang menyisipkan anaknya dengan padding yang diberikan
  - Text : Membuat text
  - Scaffold : Landasan halaman dll.

### (*) Mekanisme Pengambilan Data JSON
  - Tambahkan dependency http ke proyek
  - Buat model sesuai dengan responds data
  - Buat http request ke web service dengan metode get
  - Konversikan objek yang didapatkan dari web service
  - Konversi data yang telah ditampikkan ke aplikasi dengan FutureBuilder

### (*) Implementasi 
  - Tambahkan app ke drawer
  - Buat model kustom dan isi dengan data json
  - Tambahkan dependensi HTTP
  - Buat fungsi fetch untuk diaplikasikan
  - Buat file Mywatchlist pada lib untuk mengaplikasikan data
  - Kirim data menggunakan navigator.push pada onTap 
  - Tampilkan data pada page detail Mywatchlist
