import 'dart:io';

void runUnitConverter(){
    print('\n Unit Converter ');
    print('1. Km <-> Mi');
    print('2. °C <-> °F ');
    print('3. Kg <-> Lb ');

    stdout.write('choose a type(1/2/3): ');
    String? Choice  = stdin.readLineSync();

    switch(Choice){
        case '1': stdout.write('Enter Distance in Km : ');
        double km = double.parse(stdin.readLineSync()!);
        double miles= km* 0.62;
        print('$km Km = $miles Mi');
        break;
        case '2': stdout.write('Enter temperature in °C : ');
        double celsius =double.parse(stdin.readLineSync()!);
        double fahrenheit = (celsius * 9/5)+32;
        print('$celsius °C = $fahrenheit °F ');
        break;
        case '3': stdout.write('Enter weight in kg : ');
        double kg = double.parse(stdin.readLineSync()!);
        double pounds = kg*2.2;
        print('$kg Kg = $pounds Lb');
        break;
        default:
        print("INVALID CHOICE");
    }
}
