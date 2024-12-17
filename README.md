# stream_fariz

## Fariz Ali Muhaimin | 362358302100

### Soal 1
![Screenshot](assets/Screenshot%20(61).png)

### Soal 2
![Screenshot](assets/Screenshot%20(62).png)

### Soal 3
Keyword yield* pada kode tersebut memiliki fungsi khusus dalam konteks async generator function:

yield* digunakan untuk mendelegasikan atau menyebarkan (delegate) stream yang ada ke stream utama.

Dalam konteks kode ini, yield* mengembalikan seluruh stream yang dihasilkan oleh Stream.periodic().

Stream.periodic() menghasilkan stream yang mengeluarkan event setiap detik, dengan nilai warna yang berubah secara berurutan dari list colors.

Dengan yield*, setiap event dari stream Stream.periodic() akan secara otomatis ditambahkan ke stream utama yang sedang dibuat.

![Screenshot](assets/Screenshot%20(63).png)

### Soal 4
![Screenshot](assets/Screenshot%20(64).png)

![Screenshot](assets/Screenshot%20(65).png)

![Screenshot](assets/Screenshot%20(67).png)

### Soal 5
await for dan listen() adalah dua pendekatan berbeda dalam menangani stream di Dart.

await for bersifat sekuensial dan blocking. Eksekusi kode akan menunggu setiap event stream selesai diproses, mirip iterasi biasa namun asynchronous. Kodenya lebih linear, mudah dibaca, dan mendukung error handling tradisional melalui try-catch. Cocok untuk proses sederhana yang membutuhkan urutan eksekusi.

Sementara listen() adalah metode event-driven non-blocking. Ia memungkinkan penambahan listener tanpa menghentikan eksekusi kode utama, mendukung berbagai callback seperti onDone dan onError. Lebih fleksibel dalam menangani event, tetapi memerlukan manajemen subscription manual.

### Soal 6
Bagian initState():
Membuat instance dari NumberStream
Mendapatkan controller stream
Mendengarkan (listen) perubahan stream
Setiap kali ada event/data baru, update state lastNumber
Bagian dispose():
Menutup stream controller untuk mencegah memory leak
Fungsi addRandomNumber():
Membuat angka random antara 0-9
Menambahkan angka random ke dalam stream
Bagian body:
Menampilkan teks dengan nilai terakhir yang diterima dari stream
Tombol "New Random Number" yang ketika ditekan akan memanggil addRandomNumber()
Singkatnya, ini adalah contoh implementasi stream sederhana di Flutter:

Setiap kali tombol ditekan, akan menghasilkan angka random baru
Angka tersebut akan ditampilkan di layar
Menggunakan stream untuk mengelola perubahan data secara reaktif

![Screenshot](assets/Screenshot%20(68).png)

### Soal 7
Langkah-langkah ini menunjukkan mekanisme menangani error dalam stream di Dart.

Fungsi addError() digunakan untuk mengirim error ke dalam stream.

Listener mendeteksi error tersebut melalui callback onError dan mengambil tindakan (misalnya mengatur nilai lastNumber menjadi -1 sebagai indikator error).

Fungsi addRandomNumber() menunjukkan contoh pemicu error ke dalam stream.

![Screenshot](assets/Screenshot%20(69).png)