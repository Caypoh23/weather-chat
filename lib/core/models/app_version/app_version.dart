// Dart imports:
import 'dart:io';

// Package imports:
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_version.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class AppVersion {
  @JsonKey()
  final VersionData? ios;

  @JsonKey()
  final VersionData? android;

  VersionData? get data => Platform.isIOS ? ios : android;

  AppVersion({
    this.ios,
    this.android,
  });

  factory AppVersion.fromJson(Map<String, dynamic> json) =>
      _$AppVersionFromJson(json);

  Map<String, dynamic> toJson() => _$AppVersionToJson(this);
}

@CopyWith()
@JsonSerializable()
class VersionData {
  @JsonKey(fromJson: _versionFromJson)
  final int minVersion;

  @JsonKey(fromJson: _versionFromJson)
  final int currentVersion;

  @JsonKey()
  final String? appUrl;

  VersionData({
    required this.minVersion,
    required this.currentVersion,
    this.appUrl,
  });

  static int _versionFromJson(String? value) {
    return int.tryParse(value ?? '1') ?? 1;
  }

  factory VersionData.fromJson(Map<String, dynamic> json) =>
      _$VersionDataFromJson(json);

  Map<String, dynamic> toJson() => _$VersionDataToJson(this);
}
