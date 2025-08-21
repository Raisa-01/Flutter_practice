// Abstract class Animal
abstract class Animal {
  final String _name;

  Animal(this._name);

  String getName() => _name;

  String makeSound(); // Abstract method
}

// Lion class
class Lion extends Animal {
  double _maneSize;

  Lion(String name, double maneSize)
      : _maneSize = 0,
        super(name) {
    setManeSize(maneSize);
  }

  @override
  String makeSound() => "Roar!";

  double getManeSize() => _maneSize;

  void setManeSize(double size) {
    if (size >= 0) {
      _maneSize = size;
    } else {
      throw ArgumentError("Mane size cannot be negative.");
    }
  }
}

// Elephant class
class Elephant extends Animal {
  double _trunkLength;

  Elephant(String name, double trunkLength)
      : _trunkLength = 0,
        super(name) {
    setTrunkLength(trunkLength);
  }

  @override
  String makeSound() => "Trumpet!";

  double getTrunkLength() => _trunkLength;

  void setTrunkLength(double length) {
    if (length >= 0) {
      _trunkLength = length;
    } else {
      throw ArgumentError("Trunk length cannot be negative.");
    }
  }
}

// Parrot class
class Parrot extends Animal {
  int _vocabularySize;

  Parrot(String name, int vocabularySize)
      : _vocabularySize = 0,
        super(name) {
    setVocabularySize(vocabularySize);
  }

  @override
  String makeSound() => "Squawk! Hello!";

  int getVocabularySize() => _vocabularySize;

  void setVocabularySize(int size) {
    if (size >= 0) {
      _vocabularySize = size;
    } else {
      throw ArgumentError("Vocabulary size cannot be negative.");
    }
  }
}

// Main function
void main() {
  List<Animal> zoo = [
    Lion("Simba", 30.5),
    Elephant("Dumbo", 120.0),
    Parrot("Tia", 45),
  ];

  for (var animal in zoo) {
    print("Name: ${animal.getName()}");

    if (animal is Lion) {
      print("Mane Size: ${animal.getManeSize()} cm");
    } else if (animal is Elephant) {
      print("Trunk Length: ${animal.getTrunkLength()} cm");
    } else if (animal is Parrot) {
      print("Vocabulary Size: ${animal.getVocabularySize()} words");
    }

    print("Sound: ${animal.makeSound()}");
    print("-" * 30);
  }
}