 class Example {
  var publicMember = 'I am public';         // Public member

  var _privateMember = 'I am private';      // Private member


  void publicMethod() {
    print('This is a public method');
  }

  get privateMember => _privateMember;

  set privateMember(value) {
    _privateMember = value;
  }

  void _privateMethod() {
    print('This is a private method');
  }
}