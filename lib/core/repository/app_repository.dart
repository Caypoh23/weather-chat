// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:weather/core/api/api_provider.dart';
import 'package:weather/core/models/app_version/app_version.dart';
import 'package:weather/core/models/error/api_error.dart';
import 'package:weather/utils/api_helper.dart';

@injectable
class AppRepository {
  //
  final ApiProvider apiProvider;

  AppRepository(this.apiProvider);

  //

  Future<VersionData> getVersion() async {
    final response = await ApiHelper.request(apiProvider.appApi.getVersion());
    if (!response.isSuccessful) throw ApiError.basic(response);
    return response.body.data;
  }
}
