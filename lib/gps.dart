
import 'gps_platform_interface.dart';

class Gps {
  Future<String?> getPlatformVersion() {
    return GpsPlatform.instance.getPlatformVersion();
  }
}
