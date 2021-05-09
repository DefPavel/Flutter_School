import 'package:flutter/cupertino.dart';

// Отправить API
class AuthUserRequest {
  final String email;
  final String password;

  AuthUserRequest({@required this.email, @required this.password});
// Конвертим в Json
   Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim(),
    };

    return map;
  }

}
// Получить API
class AuthUserResponce {
  final String token;
  final String error;

  AuthUserResponce({this.token, this.error});

  factory AuthUserResponce.fromJson(Map<String, dynamic> json) {
    return AuthUserResponce(
      token: json["token"] != null ? json["token"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}


