class Validators {

  static const int minPasswordLenght = 6;
  
  static String? isValidEmail(String? email) {
    const pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return email != null && !regex.hasMatch(email) ? 'Email invalido' : null;
  }

  static String? minLenght(String? value, int min) {
    return value != null && value.length < min ? 'Minimo $min caracteres' : null;
  }

  static String? maxLenght(String value, int min) {
    return value.length < min ? 'Máximo $min caracteres' : null;
  }

  static String? minValue(String value, double min) {
    return value.isNotEmpty && double.parse(value) < min ? 
      'Minimo $min caracteres' : null;
  }

  static String? isEqualTo(String value, String compareTo) {
    return value != compareTo ? 'Los valores no coinciden' : null;
  }
}