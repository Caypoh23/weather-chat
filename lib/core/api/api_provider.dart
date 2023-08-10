// Package imports:
import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:weather/conf/api/url_constants.dart';
import 'app/app_api.dart';
import 'custom_convertor.dart';

@singleton
class ApiProvider {
  //
  late ChopperClient _client;

  //
  late AppApi appApi;

  //
  ApiProvider() {
    final uri = Uri.parse(MyUrls.apiUrl);

    _client = ChopperClient(
      baseUrl: uri,
      interceptors: _interceptors(),
      //
      services: [
        //
        AppApi.create(),
      ],
      //
      converter: MyJsonConverter(),
      errorConverter: MyJsonConverter(),
    );

    //

    appApi = _client.getService<AppApi>();
  }

  //

  static List _interceptors() {
    List interceptors = [];

    interceptors.add(HttpLoggingInterceptor());

    return interceptors;
  }

  void dispose() {
    _client.dispose();
  }
}
