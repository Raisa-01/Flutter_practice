main(){
  print('hello world');

  ///variable

  int age=26;

  print(age);

  //String type

  String name ="Raisa";
  print(name);

  //bool

  bool isTrue=true;
  print(isTrue);

  ///double
  double amount =10.2222;

  print(amount);

  String firstName='Tousif';
  String lastName='Mitul';
  String fullName= '$firstName $lastName';

  print('$fullName $age');

  print(fullName.contains('Rahim'));
  print(fullName.toUpperCase());
  print(fullName.toLowerCase());
  print(fullName.length);

  /// var: only one data type
  var x=10;
  print(x);

  dynamic person='Karim';  //String
  print(person);
  person=10;    //int
  print(person);
  person=20.5;  //double
  print(person);
  person=true; //bool
  print(person);
}