import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:teleradiology/Constants/snackbar.dart'; 

var baseUrl = "https://mydevfactory.com/~saikat8/teleradiology/api";
Future signup(Map data) async {
  try {
    final response = await http.post(Uri.parse('$baseUrl/registration'),
        headers: {
          "Content-Type": "application/json",
          'Accept': 'application/json',
        },
        body: json.encode(data),
        encoding: Encoding.getByName('utf-8'));

    if (response.statusCode == 200) {
      var resdata = jsonDecode(response.body);
      print(resdata);
      if (resdata["status"]) {
      } else {
        var error = resdata["data"]["email"] ?? resdata["data"]["phone"];
        showCustomSnackBar(error[0]);
        print("false");
      }
    }
  } on TimeoutException {
    showCustomSnackBar("Connection Time Out!");
  } catch (e) {
    print(e.toString());
    showCustomSnackBar("Server Error");
  }
}


// {status: true, msg: success, data: {name: harsh, email: testing@gmail.com, phone: 1234567890, user_type: 3, password: $2y$10$A23OoDoAkV.1iymOMJOxfetOPETl/cU5NhUTpAtloJtEDyqnplIL6, id: 33}}