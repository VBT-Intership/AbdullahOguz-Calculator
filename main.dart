import 'dart:io';

import 'calculator.dart';

void main() {
  print("**** VBT Hesap Makinesi ****");

  while (true) {
    print("İşlem yapmak için ilk sayıyı giriniz");
    int number1 = int.parse(stdin.readLineSync());
    print("İşlem yapmak için ikinci sayıyı giriniz");
    int number2 = int.parse(stdin.readLineSync());
    Calculator cal = Calculator(number1, number2);

    print(
        "Yapmak istediğiniz işlem numarasını giriniz \n\n 1-Toplama \n 2-Çıkartma \n 3-Çarpma \n 4-Bölme \n 5-Çıkış ");

    var choose = stdin.readLineSync();
    switch (choose) {
      case "1":
        {
          int result = cal.sum(number1, number2);
          print("Toplama işleminin sonucu $result");
          break;
        }
      case "2":
        {
          int result = cal.del(number1, number2);
          print("Toplama işleminin sonucu $result");
          break;
        }
      case "3":
        {
          int result = cal.multi(number1, number2);
          print("Toplama işleminin sonucu $result");
          break;
        }
      case "4":
        {
          double result = cal.divide(number1, number2);
          print("Toplama işleminin sonucu $result");
          break;
        }
      case "5":
        {
          print("uygulamadan çıkış yapılıyor..");
          exit(0);
        }

        break;
      default:
        {
          print("hatalı giriş yaptınız uygulamadan çıkış yapılıyor...");
          exit(0);
        }
    }
  }
}
