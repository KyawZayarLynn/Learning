// import 'dart:io';

class Person {
  String? name;
  int? age;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  } //Construtor

  void sayHello() {
    print('He is saying hello');
  }
}

class Student extends Person {
  String? school;
  Student(String name, int age, String school) : super(name, age) {
    //Inheritance
    this.school = school;
  }
}

//Polymorphism
class Animal {
  void makeSound() {
    print('Animals can make sounds');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Cats make meow.');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Dogs make woof');
  }
}

abstract class Flyable {
  //Abstraction
  void fly();
}

class Bird implements Flyable {
  //interface
  @override
  void fly() {
    print("The bird is flying.");
  }
}

void main() {
  Person person = Person('KyawZayarLynn', 21);
  print(person.name);
  print(person.age);
  Student student = Student('Kyaw', 20, 'Scholar');
  print(student.name);
  print(student.age);
  print(student.school);

  Animal cat = Cat();
  cat.makeSound();
  Animal dog = Dog();
  dog.makeSound();

  Bird bird = Bird();
  bird.fly();
}
