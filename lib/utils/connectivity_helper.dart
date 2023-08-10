// Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityHelper {
  //
  static final Connectivity _connectivity = Connectivity();

  static Future<bool> isConnected() async {
    ConnectivityResult connectionStatus =
        await _connectivity.checkConnectivity();
    return connectionStatus != ConnectivityResult.none;
  }
}
