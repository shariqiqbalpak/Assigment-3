class Person{
String firstName;
String lastName;
Person(this.firstName, this.lastName);

void fullName(){
print("$firstName $lastName");
}
}
class Student extends Person{
String major;
  Student(String fullName, String lastName, this.major): super(fullName,lastName);
  
@override
  void fullName(){
  print("Full name is $firstName $lastName and the Major is $major");
  }
}

void main(){
Student student = Student("Shariq", "Iqbal", "Software Engineer");

  student.fullName();
}
