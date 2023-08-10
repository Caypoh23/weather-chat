// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$AppApi extends AppApi {
  _$AppApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AppApi;

  @override
  Future<Response<AppVersion>> getVersion({String action = MyUrls.version}) {
    final Uri $url = Uri.parse('/exec');
    final Map<String, dynamic> $params = <String, dynamic>{'action': action};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AppVersion, AppVersion>($request);
  }
}
