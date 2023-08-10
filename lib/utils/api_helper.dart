// Dart imports:
import 'dart:async';

// Package imports:
import 'package:chopper/chopper.dart';
import 'package:http/http.dart' as http;

// Project imports:
import 'connectivity_helper.dart';

class ApiHelper {
  //
  static final _timeout = Response(http.Response('', 408), null);
  static final _connection = Response(http.Response('', 503), null);
  static final _serialization = Response(http.Response('', 510), null);

  static Future<Response> request(Future request, {int seconds = 30}) async {
    final isConnected = await ConnectivityHelper.isConnected();
    if (!isConnected) return _connection;

    try {
      return await request.timeout(
        Duration(seconds: seconds),
        onTimeout: () => throw ('Timeout'),
      );
    } catch (e) {
      if (e == 'Timeout') {
        return _timeout;
      } else {
        return _serialization;
      }
    }
  }
}
