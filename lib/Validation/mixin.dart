mixin CommonValidation {
  String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Please, Enter your email.";
    }

    const pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

    final emailRegExp = RegExp(pattern);

    if (!emailRegExp.hasMatch(value)) {
      return "Enter a Valid email address.";
    }

    return null;
  }

  String? mobileValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter Mobile Number";
    }

    if (int.parse(value[0]) < 6) {
      return 'Mobile Number should start with 6, 7, 8 or 9';
    }

    if (value.length < 10) {
      return "Please Enter 10 digit Mobile Number";
    }

    return null;
  }
}
