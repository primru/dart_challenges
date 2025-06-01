import 'calculator.dart';
import 'unit_converter.dart';
import 'bmi_calculator.dart';
import 'report_card.dart';
import 'dart:io';
void main(){
  while(true){
    print("\n 🧰 Everyday Tools ");
    print("1. Unit Converter ");
    print("2. Calculator ");
    print("3. BMI calculator ");
    print("4. Report Card ");
    print("5. Exit");
    stdout.write("Choose an option : ");
    String? input = stdin.readLineSync();
    switch(input) {
      case '1': runUnitConverter();break;
      case '2': runCalculator();break;
      case '3': runBMICalculator();break;
      case '4': runReportCard();break;
      case '5': exit(0);
      default : print("Invalid option");
    }
  }
}