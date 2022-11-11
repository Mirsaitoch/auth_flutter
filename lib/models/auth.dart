import 'package:flutter/material.dart';

class Auth extends ChangeNotifier {
  Map<String, String> auth_data = {
    "name": "",
    "email": "",
    "id": ""
  };

  setAuthData(
      {required String name, required String email, required String id}) {
    auth_data = {
      "name": name,
      "email": email,
      "id": id
    };
    notifyListeners();
  }

  wipeAuthData() {
    auth_data = {
      "name": "",
      "email": "",
      "id": ""
    };
    notifyListeners();
  }
}