import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ContactService extends ChangeNotifier {
  bool _isSending = false;
  bool get isSending => _isSending;

  Future<bool> sendMessage({
    required String name,
    required String email,
    required String message,
    required String subject,
  }) async {
    _isSending = true;
    notifyListeners();

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    try {
      //This function is used to send email
      final responseToMe = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          "service_id": "service_qkt7zrk",
          "template_id": "template_bmhoq7m",
          "user_id": "ozSFQqRcTJXLTL24j",
          "template_params": {
            "name": name,
            "email": email,
            "message": message,
          },
        }),
      );

      //make sure this template_params should match with your template

      //If you needed create function for acknowledge also

      _isSending = false;
      notifyListeners();

      return responseToMe.statusCode == 200;
    } catch (e) {
      _isSending = false;
      notifyListeners();
      return false;
    }
  }
}
