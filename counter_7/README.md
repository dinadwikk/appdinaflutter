# TUGAS 7

Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

*Read this in other languages: [Indonesian](README.md), [English](README.en.md)*
Heroku app url : https://dinadatabaseapp.herokuapp.com/katalog/

## COUNTER_7
### (*) Pendahuluan
Pada tugas ini, kita akan mengimplementasikan beberapa elemen dasar pada Flutter. Flutter adalah sebuah toolkit GUI untuk membangun dikompilasi secara asli aplikasi untuk seluler, web, desktop, dan lainnya dari satu basis kode secara asli.

### (*) Stateless widget dan Stateful widget
Stateless Widget merupakan sebuah widget statis yang artinya widget tersebut tidak berubah. Sedangkan, stateful Widget merupakan widget yang dinamis, artinya widget ini dapat merubah tampilannya sesuai response dari events.

Perbedaan :
|Stateless widget | Stateful widget|
|Tidak memiliki satate | Memilki state |
| Dapat berubah jika terjadi external event di panrent widget| Dapat merubah widget secara dinamis |
| Child widget tidak dapat merubah deskrip dari parent widget dengan sendirinya | Bersifat immutable |

### (*) Penggunaan widget 
Pada tugas 7 ini berikut widget yang digunakan  :
    - AppBar() : Sebagai menu petunjuk
    - Center() : Mengatur bentuk layout menjadi di tengah
    - Column() : Mengatur widget menjadi seperti bentuk sebuah kolom
    - Row() : Mengatur widget menjadi seperti bentuk sebuah baris
    - FloatingActionButton() : Menampilkan button
    - Icon() : Menampilkan icon
    - Scaffold : Landasan halaman
 dll.
 
 ### (*) setState()
 setState() merupakan cara Flutter untuk me-rebuild widget pada widget tree, lalu nilai variabel terbaru akan digunakan untuk membuat interface pengguna.
 Sebuah variabel yang akan berdampak jika menggunakan setState adalah counter.
 
 ### (*) Const dan Final
Dart merupakan aplikasi yang mendukung variabel yang bersifat immutable dan mutable. Dalam aplikasinya, final dapat digunakan untuk deklarasi variabel immutable yang nilainya sudah ataupun belum diketahui hal ini dapat dilihat saat run-time. Sedangkan const,  digunakan untuk deklarasi variabel immutable yang nilainya bersifat konstan, hal ini dapat dilihat saat compile-time.

### (*) Implementasi 
1. Buatlah aplikasi baru ` 'flutter create ... ' ` di terminal 
2. Tambahkan fungsi Decrement pada `main.dart` di file `lib`
3. Tambahkan confitional bilangan genap dan ganjil 
```
children: <Widget>[
      if (_counter % 2 != 0) ...[
      ]
      else ...[
      ]
```
4. Implemenatasi fungsi pada button 
5. Tambahkan condisional saat counter = 0, maka button tidak dapat digunakan
6. Atur posisi button sesusai ketentuan
