import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:teleradiology/Constants/snackbar.dart';
import 'package:teleradiology/Services/shared_preference_service.dart';

var baseUrl = "https://mydevfactory.com/~saikat8/teleradiology/api";
Future signup(name, email, phone, password) async {
  // bool? isCustomer = await getIscustomer();
  try {
    final response = await http.post(Uri.parse('$baseUrl/registration'),
        headers: {
          "Content-Type": "application/json",
          'Accept': 'application/json',
        },
        body: json.encode({
          "name": name,
          "email": email,
          "phone": phone,
          "password": password,
          "confirm_password": password,
          "user_type": 3
        }),
        encoding: Encoding.getByName('utf-8'));

    if (response.statusCode == 200) {
      var responsedata = jsonDecode(response.body);
      print(responsedata);
    }
  } on SocketException {
    showCustomSnackBar("No Internet connection");
  } on TimeoutException {
    showCustomSnackBar("Connection Time Out!");
  } catch (e) {
    print(e.toString());
    showCustomSnackBar(e.toString());
  }
}
