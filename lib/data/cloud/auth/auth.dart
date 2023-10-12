import 'dart:convert';

import 'package:afk_task/data/local/sharedPref.dart';
import 'package:afk_task/presentation/sharedWidgets/attention/customToast.dart';
import 'package:http/http.dart' as http;

class Auth {
  login(String username, String password) async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('https://back.afakyerp.com/API/User/Login'));
    request.body = json.encode({"userName": username, "password": password});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    var loginResponse = json.decode(await response.stream.bytesToString());

    if (response.statusCode == 200) {
      CacheHelper.saveData(key: "token", value: loginResponse["token"]);
      CacheHelper.saveData(
          key: "userName", value: loginResponse["data"]["userName"]);
      return true;
    } else {
      showFailedToast(loginResponse["message"]);
      return false;
    }
  }
}
