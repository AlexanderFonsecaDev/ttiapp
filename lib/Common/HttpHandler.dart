import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class HttpHandler
{

  final String _url = 'http://localhost:8000/api/';
  var token;
  SharedPreferences sharedPreferences;


  _setHeaders() => {
    'Content-type' : 'application/json',
    'Accept' : 'application/json',
    'Authorization' : 'Bearer $token'
  };

  _getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    token = jsonDecode(localStorage.getString('token'))['token'];
  }

  signIn(String email,password) async
  {

    /*Map data = {
      'email': email,
      'password': password,
      'device_name' : 'mobile'
    };*/
    var data = {
      'email' : email,
      'password' : password
    };

    /*final response = await http.post("localhost:8000/api/sanctum/token",
        headers: _setHeaders(),
        body: jsonEncode(data));*/

    final response =
    await http.get('');

    print(response);

  }

  getData(apiUrl) async {
    var fullUrl = _url + apiUrl;
    await _getToken();
    return await http.get(
        fullUrl,
        headers: _setHeaders()
    );
  }

  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if(sharedPreferences.getString("token") == null) {
      print("FUNCIONA");
    }
  }





}
