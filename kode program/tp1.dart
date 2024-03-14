/* Nama  : Mohammad Raihan Aulia Kamil
   NIM   : 2205449
   Kelas : Ilmu Komputer - C1         */

import 'dart:async';

class Buku
{
  String judul;
  String penulis;
  int halaman;
  String harga;

  Buku(this.judul, this.penulis, this.halaman, this.harga);

  void tampilkanDetailBuku()
  {
    print('Judul: $judul');
    print('Penulis: $penulis');
    print('Jumlah Halaman: $halaman');
    print('Harga: $harga');
  }
}

Future<Buku> ambilDataBuku() async
{
  await Future.delayed(Duration(seconds: 3));

  return Buku('Sherlock Holmes', 'Sir Arthur Conan Doyle', 424, "Rp 275.000");
}

void main() async
{
  print('Mengambil data buku...');
  
  try
  {
    var Buku = await ambilDataBuku();

    print('Detail Buku :');
    Buku.tampilkanDetailBuku();
  }
  catch (e)
  {
    print('Error mengambil data buku: $e');
  }
}