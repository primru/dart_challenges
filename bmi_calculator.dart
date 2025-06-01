import 'dart:io';

extension BMICalculator on double {
  double calculateBMI(double heightInMeters) {
    return this / (heightInMeters * heightInMeters);
  }
}


void runBMICalculator() {
  print('\nBMI Calculator');

  stdout.write('Enter your weight in kilograms (kg): ');
  double weight = double.parse(stdin.readLineSync()!);

  stdout.write('Enter your height in meters (m): ');
  double height = double.parse(stdin.readLineSync()!);


  double bmi = weight.calculateBMI(height);

  print('\nYour BMI is: ${bmi.toStringAsFixed(2)}');

  if (bmi < 18.5) {
    print('You are underweight.');
  } else if (bmi < 25) {
    print('You have a normal weight.');
  } else if (bmi < 30) {
    print('You are overweight.');
  } else {
    print('You are obese.');
  }
}
