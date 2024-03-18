import 'dart:io';

void main() {
print("Temperature Conversion Program");
  print("1. Fahrenheit to Celsius");
  print("2. Réaumur to Celsius");
  print("3. Kelvin to Celsius");
  stdout.write("Enter your choice (1/2/3): ");
  
  int choice = int.parse(stdin.readLineSync()!);
  
  double temperature;
  switch(choice) {
    case 1:
      stdout.write("Enter temperature in Fahrenheit: ");
      temperature = double.parse(stdin.readLineSync()!);
      print("Temperature in Celsius: ${fahrenheitToCelsius(temperature)}°C");
      break;
    case 2:
      stdout.write("Enter temperature in Réaumur: ");
      temperature = double.parse(stdin.readLineSync()!);
      print("Temperature in Celsius: ${reaumurToCelsius(temperature)}°C");
      break;
    case 3:
      stdout.write("Enter temperature in Kelvin: ");
      temperature = double.parse(stdin.readLineSync()!);
      print("Temperature in Celsius: ${kelvinToCelsius(temperature)}°C");
      break;
    default:
      print("Invalid choice");
      break;
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