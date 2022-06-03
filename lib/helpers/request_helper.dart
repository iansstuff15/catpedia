import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class RequestHelper {
  static Future<dynamic> getRequest(Uri url) async {
    http.Response response = await http.get(url);

    try {
      if (response.statusCode == 200) {
        String data = response.body;
        var decodedData = jsonDecode(data);
        // log(decodedData.toString());
        return decodedData;
      } else {
        log('failed');
        return 'failed';
      }
    } catch (e) {
      log(e.toString());
      return 'error';
    }
  }
}