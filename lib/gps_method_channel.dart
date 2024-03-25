import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'gps_platform_interface.dart';

class MethodChannelGps extends GpsPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('gps');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getGpsLocation() async {
    final location = await methodChannel.invokeMethod<String>('getGpsLocation');
    return location;
  }

  @override
  Future<String?> listenGpsLocation() async {
    final location = await methodChannel.invokeMethod<String>('listenGpsLocation');
    return location;
  }

  @override
  Future<String?> requestGpsPermission() async {
    final result = await methodChannel.invokeMethod<String>('requestGpsPermission');
    return result;
  }

  @override
  Future<String?> openGpsSetting() async {
    final result = await methodChannel.invokeMethod<String>('openGpsSetting');
    return result;
  }

}
