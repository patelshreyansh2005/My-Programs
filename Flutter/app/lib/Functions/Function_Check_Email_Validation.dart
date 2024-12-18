class Function_Check_Email_Validation {
  Function_Check_Email_Validation();

  static bool check_Email_Validation(String email) {
    return RegExp(
      r'^[\w-]+(?:\.[\w-]+)*@(?:[\w-]+\.)+[a-zA-Z]{2,7}$',
    ).hasMatch(email);
  }
}
