// Package imports:
import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:weather/conf/api/url_constants.dart';
import 'package:weather/core/api/weather/weather_api.dart';
import 'custom_convertor.dart';

@singleton
class ApiProvider {
  //
  late ChopperClient _client;

  //
  late WeatherApi weatherApi;

  //
  ApiProvider() {
    final uri = Uri.parse(MyUrls.apiUrl);

    _client = ChopperClient(
      baseUrl: uri,
      interceptors: _interceptors(),
      //
      services: [
        //
        WeatherApi.create(),
      ],
      //
      converter: MyJsonConverter(),
      errorConverter: MyJsonConverter(),
    );

    //

    weatherApi = _client.getService<WeatherApi>();
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
