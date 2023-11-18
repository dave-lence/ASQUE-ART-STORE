class SignUpModel {
 
  String email;
  String username;
  String password;
  String confirmPassword;

  SignUpModel(
      {
      required this.email,
      required this.username,
      required this.password,
      required this.confirmPassword});

  Map<String, dynamic> toJson() {
    return {
      
      'email': email,
      'username': username,
      'password': password,
      'confirmPassword': confirmPassword
    };
  }
}