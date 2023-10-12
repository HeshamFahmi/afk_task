// set up the buttons
// ignore_for_file: file_names

import 'package:flutter/material.dart';

showMustAuthAlertDialog(BuildContext context) {
  Widget registerButton = TextButton(
    child: const Text("تسجيل حساب جديد"),
    onPressed: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Container()));
    },
  );
  Widget loginButton = TextButton(
    child: const Text("تسجيل الدخول"),
    onPressed: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Container()));
    },
  );

// set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("تنبيه"),
    content: const Text(
        "لابد من تسجيل الدخول او انشاء حساب جديد لرؤيه بيانات التطبيق"),
    actions: [
      registerButton,
      loginButton,
    ],
  );

  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
