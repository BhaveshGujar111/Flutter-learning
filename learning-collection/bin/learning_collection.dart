
void main(List<String> arguments) {
  // Array
  var list = [10, 20, 30, 40, 50];

  // List
  var listStr = <String>[];
  listStr.add("Innovation");

  var listFilled = List.filled(5, 9);
  var listGenerated = List.generate(10, (index) => index + 1);

  list.addAll(listFilled);
  // print(list);

  // Maps

  var winners = {
    "First" : 1,
    "Second": 2,
  };
  winners.forEach((key, value) {
    print("$key : $value");
  });

  var winnerKeys = winners.keys;
  print(winnerKeys.first);

}
