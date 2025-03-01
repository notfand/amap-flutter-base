import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'amap_flutter_base_platform_interface.dart';

/// An implementation of [AmapFlutterBasePlatform] that uses method channels.
class MethodChannelAmapFlutterBase extends AmapFlutterBasePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('amap_flutter_base');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
