# TUGAS 8

Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

*Read this in other languages: [Indonesian](README.md), [English](README.en.md)*

## COUNTER_7 : Form
### (*) Pendahuluan
Pada tugas ini, kita akan membuat sebuah budget tracking app sederhana menggunakan app yang sudah dibuat pada tugas sebelumnya. Aplikasi ini akan mengimplementasikan Form, Dropdown, Button dan fungsi lainnya.

###(*) Navigator.push dan Navigator.pushReplacement
Navigator.push() menambah route baru pada stack teratas sebelumnya dengan widget baru, sedangkan Navigator.pushReplacement() akan me-replace halaman sekarang dengan halaman baru.

###(*) Widget yang digunakan
Pada tugas ini saya menggunakan beberapa widget, yaitu :
  - Card : Membuat card
  - TextFormField : input form text field 
  - Icon : Meberikan icon
  - dll.

### (*) Event Flutter 
  - onSaved : Terjadi saat pengguna akan menyimpan nilai TextField
  - onChanged : Terjadi saat pengguna akan melakukan perubahan pada nilai TextField
  - onPressed : Terjadi saat telah selesai di klik
  - onTap : Terjadi sesaat setelah diklik
  
### (*) Cara Kerja Navigator
Navigator bekerja menggunakan paradigma stack yaitu last in first out. Yang lalu akan ditampilkan pada screen teratas bergantung pada method yang digunakan pada object Navigator salah satunya menggunakan method pada class Navigator seperti push(), pop(), pushReplacement(), dan lain-lain.

### (*) Implementasi 
1. Buat file `Drawer.dart` yang berisi fungsi drawer.
2. Set up navigasi pada Drawer
3. Budat model budget berisi data type judul, jenis, nominal
4. Buat file tambah budget dan data budgget yang berisi form judul, jenis, nominal 
5. Implementasi fungsi pada drawer dan button
