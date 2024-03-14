import 'dart:io';

void main() {
  stdout.write("Masukkan nama anda: ");
  String? name = stdin.readLineSync();
  stdout.write("Masukkan jurusan anda: ");
  String? jurusan = stdin.readLineSync();

  print("Halo $name, jurusan anda $jurusan");
  // if (name != null && jurusan != null) {

  // } else {
  //   print("Tidak ada input yang diberikan.");
  // }
}
