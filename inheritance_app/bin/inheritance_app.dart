//PART-1
// class Person{
//   String? name, lastName, nationality;
//   int? age;
//   // Person(this.name, this.lastName, this.nationality);
//   void showName() {print(name);}
//   sayHello() {print("Hello");}
//   showNationality() {print("American");}
// }

// class Bonni extends Person {
//   String? profession;
//   Bonni(super.name, super.lastName, super.nationality,this.profession);
//   void showProfession() => print(profession);
// }

// class Paulo extends Person{
//   bool? playGuitar;
  // Paulo(super.name, super.lastName, super.nationality, this.playGuitar);
//
//   @override
//   sayHello() {print("Ola");}
//
//   @override
//   showNationality() {
//     print("Mozambican");
//   }
// }

//PART-2
// class Location{
//   num? lat, lng;
//   Location(this.lat, this.lng);
//
//   // Named constructor
//   Location.create(this.lat, this.lng);
//   show() {print("location Show called");}
// }
// class ElevatedLocation extends Location{
//   num? elevation;
//   ElevatedLocation(super.lat, super.lng, this.elevation);
//
//   @override
//   String toString() {
//     var result = "$lat $lng $elevation";
//     return result;
//   }
//
//   @override
//   show() {print("Elevated show called");}
// }

//PART-3 [ABSTRACT CLASS]
abstract class Animal{
  void breathe(); // an abstract method
  void makeNoise();
}
class Person implements Animal{
  String? name, nationality;
  Person(this.name, this.nationality);
  @override
  void breathe() {
    print("Person breathing through nostrils");
  }

  @override
  void makeNoise() {
      print("Person making Noise");
  }

  // @override
  // String toString() => "$name $nationality";
}
abstract class Funny{
  void makePeopleLaugh();
}

class TVShow implements Funny{
  String? name;
  @override
  void makePeopleLaugh() {
    print("TV show is funny and make people laugh");
  }
}

class Comedian extends Person implements Funny{
  Comedian(super.name, super.nationality);
  @override
  void makePeopleLaugh(){print("Comedian is making people laugh");}
}

main(List<String> arguments) {
  //PART-1
  // var bonni = Bonni();
  // bonni.name = "Bonni";
  // bonni.profession = "Ballerina";
  // bonni.showName();
  // bonni.showProfession();
  // var paulo = Paulo();
  // paulo.showNationality();

  //PART-2
  // var elevated = ElevatedLocation(23.25, -25.45, 20);
  // print("${elevated.lat} ${elevated.lng} ${elevated.elevation}");
  // elevated.toString();
  // print(elevated.toString());
  // print(elevated); // Same as above


  // PART-3
  var person = Person("Jennie", "Maryland");
  person.makeNoise();
  print(person);


}