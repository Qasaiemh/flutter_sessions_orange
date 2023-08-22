import 'ModifierModel.dart';

void main() {
  var instance = Example();

  print(instance.publicMember); // Accessing public member
  instance.publicMethod(); // Calling public method
  //instance.privateMember('s');
  // Uncommenting the lines below will result in compilation errors:
  instance.privateMember(3);
  print(instance.privateMember); // Error: Private member cannot be accessed from outside
  // instance._privateMethod();       // Error: Private method cannot be called from outside
}
