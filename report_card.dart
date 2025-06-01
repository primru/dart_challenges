import 'dart:io';

class ReportCard {
    List<int>marks;
    
    int get total {
        int sum=0;
        for(var mark in marks){
            sum+=mark;
        }return sum;
    }
    double get average => total/marks.length;
    String get grade {
        if (average >=85) return 'A';
        else if (average >= 75) return 'B';
        else return 'C';
    }
    ReportCard(this.marks);
}

class Student {
    String name;
    ReportCard reportcard;

    Student({required this.name, required this.reportcard});

    void displayReport(){
        print("\n____ REPORT CARD ____");
        print("Marks : ${reportcard.marks}");
        print("Total : ${reportcard.total}");
        print("Average : ${reportcard.average.toStringAsFixed(2)}");
        print("Grade : ${reportcard.grade}");

    }
}

void runReportCard(){
    stdout.write("Enter Student Name : ");
    String name =stdin.readLineSync()!;
    print("Enter number of subjects(3-5): ");
    int? n= int.tryParse(stdin.readLineSync()!);

    if(n==null || n<3 || n>5){
        print("Invalid number of subjects. Must be between 3 and 5.");
        return;
    }
    List<int>marks =[];

    for(int i=0;i<n;i++){
        stdout.write("ENTER MARKS FOR SUBJECT ${i+1} : ");
        int? mark =int.tryParse(stdin.readLineSync()!);
        if(mark == null || mark <0 || mark >100){
            print("""Inavlid input. 
            Marks should be in between 0 and 100.
            Please enter valid marks .""");
            i--;
        }
        else {
            marks.add(mark);
        }
       
    }
      ReportCard rc = ReportCard(marks);
      Student student = Student(name: name, reportcard: rc);
      student.displayReport();
}
