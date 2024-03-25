import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'gps_method_channel.dart';

abstract class GpsPlatform extends PlatformInterface {
  GpsPlatform() : super(token: _token);

  static final Object _token = Object();

  static GpsPlatform _instance = MethodChannelGps();
  static GpsPlatform get instance => _instance;
  static set instance(GpsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  // 获取gps定位信息
  Future<String?> getGpsLocation() {
    throw UnimplementedError('getGpsLocation() has not been implemented.');
  }

  // 监听gps定位信息
  Future<String?> listenGpsLocation() {
    throw UnimplementedError('listenGpsLocation() has not been implemented.');
  }

  // 申请gps权限
  Future<String?> requestGpsPermission() {
    throw UnimplementedError('requestGpsPermission() has not been implemented.');
  }

  // 打开gps设置
  Future<String?> openGpsSetting() {
    throw UnimplementedError('openGpsSetting() has not been implemented.');
  }


}
