// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AppVersionCWProxy {
  AppVersion ios(VersionData? ios);

  AppVersion android(VersionData? android);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppVersion(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppVersion(...).copyWith(id: 12, name: "My name")
  /// ````
  AppVersion call({
    VersionData? ios,
    VersionData? android,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAppVersion.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAppVersion.copyWith.fieldName(...)`
class _$AppVersionCWProxyImpl implements _$AppVersionCWProxy {
  const _$AppVersionCWProxyImpl(this._value);

  final AppVersion _value;

  @override
  AppVersion ios(VersionData? ios) => this(ios: ios);

  @override
  AppVersion android(VersionData? android) => this(android: android);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppVersion(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppVersion(...).copyWith(id: 12, name: "My name")
  /// ````
  AppVersion call({
    Object? ios = const $CopyWithPlaceholder(),
    Object? android = const $CopyWithPlaceholder(),
  }) {
    return AppVersion(
      ios: ios == const $CopyWithPlaceholder()
          ? _value.ios
          // ignore: cast_nullable_to_non_nullable
          : ios as VersionData?,
      android: android == const $CopyWithPlaceholder()
          ? _value.android
          // ignore: cast_nullable_to_non_nullable
          : android as VersionData?,
    );
  }
}

extension $AppVersionCopyWith on AppVersion {
  /// Returns a callable class that can be used as follows: `instanceOfAppVersion.copyWith(...)` or like so:`instanceOfAppVersion.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AppVersionCWProxy get copyWith => _$AppVersionCWProxyImpl(this);
}

abstract class _$VersionDataCWProxy {
  VersionData minVersion(int minVersion);

  VersionData currentVersion(int currentVersion);

  VersionData appUrl(String? appUrl);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VersionData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VersionData(...).copyWith(id: 12, name: "My name")
  /// ````
  VersionData call({
    int? minVersion,
    int? currentVersion,
    String? appUrl,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVersionData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVersionData.copyWith.fieldName(...)`
class _$VersionDataCWProxyImpl implements _$VersionDataCWProxy {
  const _$VersionDataCWProxyImpl(this._value);

  final VersionData _value;

  @override
  VersionData minVersion(int minVersion) => this(minVersion: minVersion);

  @override
  VersionData currentVersion(int currentVersion) =>
      this(currentVersion: currentVersion);

  @override
  VersionData appUrl(String? appUrl) => this(appUrl: appUrl);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VersionData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VersionData(...).copyWith(id: 12, name: "My name")
  /// ````
  VersionData call({
    Object? minVersion = const $CopyWithPlaceholder(),
    Object? currentVersion = const $CopyWithPlaceholder(),
    Object? appUrl = const $CopyWithPlaceholder(),
  }) {
    return VersionData(
      minVersion:
          minVersion == const $CopyWithPlaceholder() || minVersion == null
              ? _value.minVersion
              // ignore: cast_nullable_to_non_nullable
              : minVersion as int,
      currentVersion: currentVersion == const $CopyWithPlaceholder() ||
              currentVersion == null
          ? _value.currentVersion
          // ignore: cast_nullable_to_non_nullable
          : currentVersion as int,
      appUrl: appUrl == const $CopyWithPlaceholder()
          ? _value.appUrl
          // ignore: cast_nullable_to_non_nullable
          : appUrl as String?,
    );
  }
}

extension $VersionDataCopyWith on VersionData {
  /// Returns a callable class that can be used as follows: `instanceOfVersionData.copyWith(...)` or like so:`instanceOfVersionData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VersionDataCWProxy get copyWith => _$VersionDataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppVersion _$AppVersionFromJson(Map<String, dynamic> json) => AppVersion(
      ios: json['ios'] == null
          ? null
          : VersionData.fromJson(json['ios'] as Map<String, dynamic>),
      android: json['android'] == null
          ? null
          : VersionData.fromJson(json['android'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppVersionToJson(AppVersion instance) =>
    <String, dynamic>{
      'ios': instance.ios?.toJson(),
      'android': instance.android?.toJson(),
    };

VersionData _$VersionDataFromJson(Map<String, dynamic> json) => VersionData(
      minVersion: VersionData._versionFromJson(json['minVersion'] as String?),
      currentVersion:
          VersionData._versionFromJson(json['currentVersion'] as String?),
      appUrl: json['appUrl'] as String?,
    );

Map<String, dynamic> _$VersionDataToJson(VersionData instance) =>
    <String, dynamic>{
      'minVersion': instance.minVersion,
      'currentVersion': instance.currentVersion,
      'appUrl': instance.appUrl,
    };
