import 'dart:io';

void main() {
  print("Program Konversi Suhu");
  print("1. Fahrenheit ke Celsius");
  print("2. Reaumur ke Celsius");
  print("3. Kelvin ke Celsius");
  stdout.write("Masukkan pilihan Anda (1/2/3): ");
  
  try {
    int choice = int.parse(stdin.readLineSync()!);
    
    double temperature;
    switch(choice) {
      case 1:
        stdout.write("Masukkan suhu dalam Fahrenheit: ");
        temperature = double.parse(stdin.readLineSync()!);
        print("Suhu dalam Celsius: ${fahrenheitToCelsius(temperature)}°C");
        break;
      case 2:
        stdout.write("Masukkan suhu dalam Reaumur: ");
        temperature = double.parse(stdin.readLineSync()!);
        print("Suhu dalam Celsius: ${reaumurToCelsius(temperature)}°C");
        break;
      case 3:
        stdout.write("Masukkan suhu dalam Kelvin: ");
        temperature = double.parse(stdin.readLineSync()!);
        print("Suhu dalam Celsius: ${kelvinToCelsius(temperature)}°C");
        break;
      default:
        print("Pilihan tidak valid");
        break;
    }
  } catch (e) {
    print("Terjadi kesalahan: $e");
  }
}

double fahrenheitToCelsius(double fahrenheit) {
  return (fahrenheit - 32) * (5/9);
}

double reaumurToCelsius(double reaumur) {
  return reaumur * (5/4);
}

double kelvinToCelsius(double kelvin) {
  return kelvin - 273.15;
}