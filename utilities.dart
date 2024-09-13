// string manipulation
void main() {
  // concantenation
  String concantenate = "string" + " " + "manipulation";
  print(concantenate);

  //interpolation
  String name = "brian";
  String nationality = "KENYAN";

  print("My name is $name, and I'm a $nationality citizen");

  //substring
  String text = "How to start a speech ?";
  String subtext = text.substring(7, 12);

  print(subtext);

  //case conversion
  print(
      "My name is ${name.toUpperCase()}, and I'm a ${nationality.toLowerCase()} citizen.");

  //Collections(Lists,Sets,Maps)
  //Lists
  List<String> fruits = ["Apple", "Orange", "Banana", "Pinapple"];

  //adding an item to the list
  fruits.add("Watermelon");

  //removing an item from a list
  fruits.remove("Banana");

  //iterating over a list
  for (var fruit in fruits) {
    print(fruit);
  }

  //sets
  Set<String> operatingSystem = {"Windows", "Mac os"};

  //adding an item to a set
  operatingSystem.add("Linux");

  //removing an item to a set
  operatingSystem.remove("Windows");

  //iterating over a set
  for (var os in operatingSystem) {
    print(os);
  }

  //Maps
  Map<String, int> age = {"Brian": 20, "Joel": 26, "Mary": 32};

  //adding an item to maps
  age["Ben"] = 25;

  //removing an item on maps
  age.remove("Brian");

  //iterating over maps
  age.forEach((name, age) {
    print("My name is $name and I'm $age years old.");
  });
}
