class TypeId {

  static const ids = [
    "Normal",
    "Fighting",
    "Poison",
    "Ground",
    "Flying",
    "Bug",
    "Rock",
    "Ghost",
    "Steel",
    "Fire",
    "Water",
    "Electric",
    "Grass",
    "Ice",
    "Psychic",
    "Dragon",
    "Dark",
    "Fairy"
  ];

  // id number to string.
  static String n2s(int number){
    return ids[number];
  }

  // id string to number.
  static int s2n(String name){
    return ids.indexOf(name);
  }
}