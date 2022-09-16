import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:teleradiology/Constants/snackbar.dart';
import 'package:teleradiology/Services/shared_preference_service.dart';
import 'package:teleradiology/service%20screen/service_change_password.dart';
import 'package:teleradiology/service%20screen/service_mainscreen.dart';
import 'package:teleradiology/service%20screen/service_sign_in_page.dart';
import 'package:teleradiology/service%20screen/service_verify_otp.dart';

var baseUrl = "https://mydevfactory.com/~saikat8/teleradiology/api";

Future servicesignup(Map data) async {
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
        await setUserinfo(email: data["email"]);
        Get.to(ServiceVerifyOTP());
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

Future serviceOtp(otp) async {
  var email = await getEmail();
  print(email);
  try {
    final response = await http.post(Uri.parse('$baseUrl/accountActivation'),
        headers: {
          "Content-Type": "application/json",
          'Accept': 'application/json',
        },
        body: json.encode({"email": email, "otp": otp}),
        encoding: Encoding.getByName('utf-8'));

    if (response.statusCode == 200) {
      var resdata = jsonDecode(response.body);
      print(resdata);
      if (resdata["status"]) {
        showCustomSnackBar(resdata["msg"], isError: false);
        setUserinfo(
            email: resdata["data"]["email"],
            name: resdata["data"]["name"],
            phone: resdata["data"]["phone"]);
        Get.off(ServiceSignInPage());
      } else {
        showCustomSnackBar(resdata["msg"]);
      }
    }
  } catch (e) {
    print(e.toString());
    showCustomSnackBar("Server Error");
  }
}

Future serviceForgotSendEmail(email) async {
  print(email);
  try {
    final response =
        await http.post(Uri.parse('$baseUrl/forgot_password_check'),
            headers: {
              "Content-Type": "application/json",
              'Accept': 'application/json',
            },
            body: json.encode({"email": email}),
            encoding: Encoding.getByName('utf-8'));

    if (response.statusCode == 200) {
      var resdata = jsonDecode(response.body);
      print(resdata);
      if (resdata["status"]) {
        Get.to(ServiceChangePassword());
        showCustomSnackBar(resdata["msg"], isError: false);
      } else {
        showCustomSnackBar(resdata["msg"]);
      }
    }
  } catch (e) {
    print(e.toString());
    showCustomSnackBar("Server Error");
  }
}

Future serviceChangePassword(data) async {
  try {
    final response =
        await http.post(Uri.parse('$baseUrl/forgot_password_submit'),
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
        showCustomSnackBar(resdata["msg"], isError: false);
        Get.off(ServiceSignInPage());
      } else {
        showCustomSnackBar(resdata["msg"]);
      }
    }
  } catch (e) {
    print(e.toString());
    showCustomSnackBar("Server Error");
  }
}

Future serviceSignIn(Map data) async {
  try {
    final response = await http.post(Uri.parse('$baseUrl/login'),
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
        await setlogin(true);
        Get.to(ServiceMainScreen());
      } else {
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
