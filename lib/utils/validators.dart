bool validatePhone(String val) {
  final RegExp pattern = RegExp(r'^\d{10}$');
  return pattern.hasMatch(val);
}

bool validateOtp(String val) {
  final RegExp pattern = RegExp(r'^\d{6}$');
  return pattern.hasMatch(val);
}
