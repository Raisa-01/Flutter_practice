// A. Interface to define role behavior
abstract class Role {
  void displayRole(); // Method to be implemented by Student and Teacher
}

// B. Base class: Person
class Person implements Role {
  String name;
  int age;
  String address;
  Role? role; // Optional role reference

  Person(this.name, this.age, this.address, [this.role]);

  @override
  void displayRole() {
    role?.displayRole(); // Delegates to assigned role if any
  }

  // Getter-like method for formatted info
  String getInfo() => 'Name: $name\nAge: $age\nAddress: $address';
}

// C. Student class extends Person and implements Role
class Student extends Person implements Role {
  String studentID;
  String grade;
  List<double> courseScores;

  Student({
    required String name,
    required int age,
    required String address,
    required this.studentID,
    required this.grade,
    required this.courseScores,
  }) : super(name, age, address);

  @override
  void displayRole() {
    print('Role: Student');
  }

  double calculateAverage() {
    return courseScores.isEmpty
        ? 0.0
        : courseScores.reduce((a, b) => a + b) / courseScores.length;
  }

  void displayStudentInfo() {
    displayRole();
    print(getInfo());
    print('Average Score: ${calculateAverage()}');
  }
}

// D. Teacher class extends Person and implements Role
class Teacher extends Person implements Role {
  String teacherID;
  List<String> coursesTaught;

  Teacher({
    required String name,
    required int age,
    required String address,
    required this.teacherID,
    required this.coursesTaught,
  }) : super(name, age, address);

  @override
  void displayRole() {
    print('Role: Teacher');
  }

  void displayTeacherInfo() {
    displayRole();
    print(getInfo());
    print('Courses Taught:');
    for (var course in coursesTaught) {
      print('- $course');
    }
  }
}

// E. Main method: StudentManagementSystem execution
void main() {
  Student student = Student(
    name: 'Raisa Ahmed',
    age: 20,
    address: '123 Mirpur Road',
    studentID: 'S2025',
    grade: 'A',
    courseScores: [90, 85, 82],
  );
  print('Student Information:');
  student.displayStudentInfo();

  print('\n');

  Teacher teacher = Teacher(
    name: 'Mrs. Nahar',
    age: 35,
    address: '456 Dhanmondi Avenue',
    teacherID: 'T3500',
    coursesTaught: ['Math', 'English', 'Bangla'],
  );
  print('Teacher Information:');
  teacher.displayTeacherInfo();
}