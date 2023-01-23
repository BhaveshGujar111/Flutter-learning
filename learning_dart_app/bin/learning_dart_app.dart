
class Microphone {
  // Instance variables, another variables
  late String name;
  late String color;
  late int model;

  // Syntactic Sugar Constructor
  Microphone(this.name, this.color, this.model);

  // Named Constructor
  Microphone.initialize() {
    name = "David";
    color = "Black";
  }

  String get getName => name;
  set setName(String value) => name = value;
  String get getColor => color;
  set setColor(String value) => color = value;
  int get getModel => model;
  set setModel(int value) => model = value;

  // Microphone(String name, String color, int model) {
  //   this.name = name;
  //   this.color = color;
  //   this.model = model;
  // }

  // setName(String Name) => name = Name;
  // setColor(String Color) => color = Color;
  // setModel(int Model) => model = Model;
  // getName() => name;
  // getColor() => color;
  // getModel() => model;

}

main(List<String> arguments) { //entry point for execution

  // String name = "Paulo"; print(name);
  // var number;  // this changes
  // number = "shave";
  // number = 41;
  // number = 39.342;

  // num age = 12;
  // double number = 19.46;

  // const pi = 3.14; // value to be constant at compile time
  // final country = "Jamaica"; // value never changes

  // String name = "James", lastname = "Bond";
  // int age = 45;
  // print("$name ${lastname.toLowerCase()} is $age");

  // int number = 34;
  // var pi = 3.2;
  // print(number - pi);
  //
  // var result = number / pi;
  // print(result);
  
  // Equality and Relational Operators { == , != , >, < , >=, <= }
  // print(4 == 3);

  // Type Test Operators [ NEW CONCEPT]
  // as, is, is!
  // print(number is! int);
  // if(!(number == 314)) {
  //   print("Hey we are in!!");
  // } else{
  //   print("Hey we are out");
  // }

  // for(int i = 1; i <= 10; i++) {
  //   if(i%2 == 0){
  //     print("Even $i");
  //   } else{
  //     print("Odd $i");
  //   }
  // }

  // int i = 0;
  // while(i < 10) {
  //   i++;
  //   print(i);
  // }
  // do{
  //   i++;
  //   print("Amsterdam $i");
  // }while(i < 10);
  // int number = 5;
  // switch(number) {
  //   case 1:
  //     print("You are inside 1");
  //     break;
  //   case 2:
  //     print("You are inside 2");
  //     break;
  //   case 3:
  //     print("You are inside 3");
  //     break;
  //   default:
  //     print("Wrong credentials !!!");
  // }

  //FUNCTIONS
  // doSomething();
  // sayMyName("Bhavesh", 20000,returnAge());
  // print("My details are ${sayMyName("Bhavesh", 100, 23)}");

  // print(sayMyName("Bhavesh", 1000, 23));

  // Optional parameter
  // print(yourAge("Bhavesh", "Gujar"));
  // print(yourAge("Bhavesh", "Gujar", 20));

  //Lexical Scope

  // insideFunction() {
  //   var agentName = "Bond";
  //
  //   innerFunction() {
  //     agentName = "James";
  //   }
  //   innerFunction();
  //
  //    print(agentName);
  // }
  // insideFunction();

  var mic = Microphone("Mike", "Harvey", 10);

  mic.setName = "Mickey";
  mic.setColor = "Grey";
  mic.setModel = 1;

  print(mic.getModel);

  // mic.setName("Mikeey");
  // mic.setColor("Red");
  // mic.setModel(100);
  // print("${mic.getName()} ${mic.getColor()} ${mic.getModel()}");

  // var mic1 = Microphone.initialize();
  // print(mic1.name);
  // print("${mic.name} ${mic.color} ${mic.model}");
}

// String yourAge(String name, String lastname, [int? age]){
//   var finalResult = "$name $lastname";
//   if(age == null) {
//     finalResult = "$finalResult doesn't want to tell the age";
//   } else{
//     finalResult += " $age";
//   }
//   return finalResult;
// }

// doSomething() {
//   print("Do something");
// }

// String sayMyName(String name, int salary, int age) => ("Name $name & Age is $age & salary is $salary");

// int returnAge(){
//   return 23;
// }

