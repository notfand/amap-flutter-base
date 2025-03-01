
import 'amap_flutter_base_platform_interface.dart';

class AmapFlutterBase {
  Future<String?> getPlatformVersion() {
    return AmapFlutterBasePlatform.instance.getPlatformVersion();
  }
}
