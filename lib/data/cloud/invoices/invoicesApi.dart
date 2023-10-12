// ignore_for_file: file_names

import 'dart:convert';
import 'package:afk_task/data/local/sharedPref.dart';
import 'package:afk_task/data/models/invoicesModel.dart';
import 'package:afk_task/presentation/sharedWidgets/attention/customToast.dart';
import 'package:http/http.dart' as http;

class InvoicesApi {
  getAllInvoices() async {
    InvoicesModel? invoicesModel;
    var headers = {
      'Authorization': 'Bearer ${CacheHelper.getData(key: "token")}'
    };
    var request = http.Request(
        'GET', Uri.parse('https://back.afakyerp.com/API/PosForm/GetAll'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseInvo = json.decode(await response.stream.bytesToString());
      invoicesModel = InvoicesModel.fromJson(responseInvo);
      return invoicesModel;
    } else {
      showFailedToast("error while loading data");
    }
  }
}
