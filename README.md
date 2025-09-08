# flutter_application_2
# Praktikum 1-4 (Tugas 1)

# PRAKTIKUM 1
# Langkah 1 : Membuat Project Baru
masuk ke file flutter yang sebelumnya ada, lalu membuat new project dengan namun flutter_application2
dokumentasi :
<img width="253" height="745" alt="image" src="https://github.com/user-attachments/assets/fdd8eff2-0058-4671-a4e7-9ba1ce528327" />

# Langkah 2 : Buka file lib/main.dart
mengisi nama dan nim pada bagian "text title"
dokumentasi : 
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/721d000f-725e-4c0e-8430-b123b0c06a95" />
penjelasan : di langkah ini, diawali dengan membuka file main di lib lalu mengganti kodenya dengan kode yang sudah disediakan di modul. kode ini merupakan kerangka awal sebelum menambahkan kerangka lainnya untuk layout yang lebih kompleks. MaterialApp sebagai widget utamanya, Scaffold sebagai kerangka halaman yang terdiri dari AppBar dengan judul nya dan body yang menampilkan tulisan "hello world". dari percobaan ini dapat dipastikan aplikasi berjalan lancar dengan tampilan awal yang sederhana

# Langkah 3 : Identifikasi layout diagram
hanya mulai menentukan akan menampilkan layout dengan mulai menyusun elemen elemennya

# Langkah 4 : Implementasi title rowmelet
penjelasan tahap-tahap yang harus dilakukan seperti :
- menambahkan kolom bagian kiri pada judul
- soal 1 : meletakkan kolom ke widget expanded dengan menambahkan crossAxisAlignment. untuk menyesuaikan ruang yang tersisa
- soal 2 : meletakkan baris pertama didalam container. menambahkan padding 8. dan teks lokasi didalam column dan berwarna abu abu
- soal 3 : menambahkan bintang di dua item terakhir di baris judul dengan warna merah. baris di container di beri padding di tepi nya. mengganti hello world dengan title section
dokumentasi :
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/160a4f1d-efea-444c-922e-4e2c886d6b90" />

# PRAKTIKUM 2
# Langkah 1 : Buat method Column _buildButtonColumn
dokumentasi : 
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/92828140-2da4-43da-8a07-8bb662b471dc" />
penjelasan : karena struktur utama sudah siap dan sekarang menambahkan method untuk membuat kolom kecil berisi ikon diatas dan label teks di bawahnya. untuk menyusun ikon secara vertikal.

# Langkah 2 : Buat widget buttonSection
dokumentasi : 
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/54ccae2d-e32f-447e-871c-fcc7a37dadf0" />
penjelasan : kita membuat sebuah row berisi tombol kecil yaitu call, route dan share. ketiga tombol itu caranya dengan memanggil _buildbuttoncolumn yang sudah dibuat. sehingga sudah bisa menampilkan title row (nama lokasi, alamat, ikon bintang, rating) dan button row (call, route, share)

# Langkah 3 : Tambah button section ke body
dokumentasi :
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/411ed8d5-ff94-4d20-9215-b5e550d81191" />
penjelasan : di body menggunakan column karena isi bodynya baru satu atau dua widget saja

# PRAKTIKUM 3 : Implementasi text section
# Langkah 1 : Buat widget textSection
dokumentasi :
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/b3f48863-2b00-44e9-9ce1-ee905ac154b0" />
penjelasan : menambahkan widget teks deskriptif sedergana yang akan ditampilkan di bawah button row. menggunakan container dengan padding supaya tidak mepet ke tepi layar

# Langkah 2 : Tambahkan variabel text section ke body
dokumentasi :
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/4a9e8cb0-fbbb-4af3-8175-279c56d2a094" />
penjelasan : sekarang tex section sudah ditambahkan ke body dibawah tombol

# PRAKTIKUM 4 : Implementasi image section
# Langkah 1 : Siapkan aset gambar
dokumentasi :
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/8e3d634f-160a-4fdb-8003-58a3b601e496" />
penjelasan : download gambar dan simpen di folder asset lalu rubah namanya, kemudain masukkan file gambar tersebut ke dalam file pubspec.yml supaya bisa diakses oleh flutter. lalu masukkan dan hubungkan ke project main nya

# Langkah 2 : Tambahkan gambar ke body
dokumentasi : 
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/6bd37ecb-9722-4fb5-936b-2c4da5a11822" />
penjelasan : sekarang sudah terdapat bagian judul, dengan gambar, tiga tombol, berserta deskripsi tempatnya

# Langkah 3 : Terakhir, ubah menjadi ListView
dokumentasi hasil akhir : 
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a6039e7b-4f26-449b-a140-7fefe94986ff" />
pwnjelasan : di praktikum 2 yang awalnya column diganti menjadi listview karena supaya lebih fleksibel karena sudah terdiri dari banyak isi body nya

# KESIMPULAN
jadi dari praktikum 1-4 dapat didapat hasil diantaranya :
- image nya menggunakan asset dengan ukuran fix dengan sudut cekung
- title section berisi nama lokasi, nama daerah, ikon bintang merah dan angka rating
- button section ada tiga tombol yaitu call, route dan share
- deskripsi section berupa teks tentang labuan bajo
- semua item dan struktur itu dibungkus dengan listview supaya bisa discroll untuk ke fleksibelanan
