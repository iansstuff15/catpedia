import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class RequestHelper {
  static Future<dynamic> getRequest(Uri url, String catapi_key) async {
    http.Response response =
        await http.get(url, headers: {"x-api-key": catapi_key});

  /// Checking if the response is 200, if it is, it is decoding the data and returning it. If it is not
  /// 200, it is returning failed. If there is an error, it is returning error.
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
