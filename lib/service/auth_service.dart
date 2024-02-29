import 'package:bdki/service/routing_service.dart';
import 'package:bdki/service/storage_service.dart';
import 'package:flutter/material.dart';

saveLogin(String nameUser) async {
  SecureStorage secureStorage = SecureStorage();
  await secureStorage.writeSecureData("name", nameUser);
  await secureStorage.writeSecureData("login", 'true');
}

logOut() async {
  print("logout");
  SecureStorage secureStorage = SecureStorage();
  secureStorage.writeSecureData("name", '');
  secureStorage.writeSecureData("login", 'false');
}

checkLogin(BuildContext context) {
  print("logout");
  SecureStorage secureStorage = SecureStorage();
  secureStorage.readSecureData("login").then((value) {
    if (value == 'true') {
      goToDashboard(context);
    }
  });
}
