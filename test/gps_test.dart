import 'package:flutter_test/flutter_test.dart';
import 'package:gps/gps.dart';
import 'package:gps/gps_platform_interface.dart';
import 'package:gps/gps_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGpsPlatform
    with MockPlatformInterfaceMixin
    implements GpsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GpsPlatform initialPlatform = GpsPlatform.instance;

  test('$MethodChannelGps is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGps>());
  });

  test('getPlatformVersion', () async {
    Gps gpsPlugin = Gps();
    MockGpsPlatform fakePlatform = MockGpsPlatform();
    GpsPlatform.instance = fakePlatform;

    expect(await gpsPlugin.getPlatformVersion(), '42');
  });
}
