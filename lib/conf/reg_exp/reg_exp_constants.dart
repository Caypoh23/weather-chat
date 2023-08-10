class MyRegExps {
  //
  static RegExp get digits => RegExp(r'[0-9]');

  static RegExp get nonDigits => RegExp(r'\D');

  static RegExp get email => RegExp(r'(\w+@[a-zA-Z_-]+?\.[a-zA-Z])');

  static RegExp get hours => RegExp(r'(?:[1-9]{1})?$');

  static RegExp get minutes => RegExp(r'(?:[1-5]?[0-9])?$');
}
