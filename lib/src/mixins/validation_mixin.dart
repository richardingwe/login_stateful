class ValidationMixin {
  String validateEmail(String value) {
    if (!value.contains('@') || value == null || value.isEmpty) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 4 || value == null || value.isEmpty) {
      return 'Password must be atleast 4 characters';
    }
    return null;
  }
}
