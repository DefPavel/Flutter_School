import 'dart:convert';
import 'package:flutter_school/models/AuthUser.dart';
import 'package:http/http.dart' as http;

class Authorization {
  Future<AuthUserResponce> login(AuthUserRequest requestModel) async {

    var url = Uri.https('reqres.in', 'api/login'); // URL к api

    final response = await http.post(url, body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      //Вернуть модель данных
      return AuthUserResponce.fromJson(
        json.decode(response.body),
      );
    } 
    else {
      throw Exception('exp-fail');
    }
  }
  
}