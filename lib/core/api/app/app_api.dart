// Package imports:
import 'package:chopper/chopper.dart';

// Project imports:
import 'package:weather/conf/api/url_constants.dart';
import 'package:weather/core/models/app_version/app_version.dart';

part 'app_api.chopper.dart';

@ChopperApi(baseUrl: MyUrls.exec)
abstract class AppApi extends ChopperService {
  static AppApi create([ChopperClient? client]) => _$AppApi(client);

  @Get()
  Future<Response<AppVersion>> getVersion({
    @Query() String action = MyUrls.version,
  });
}
