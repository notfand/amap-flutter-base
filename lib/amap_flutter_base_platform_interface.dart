import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'amap_flutter_base_method_channel.dart';

abstract class AmapFlutterBasePlatform extends PlatformInterface {
  /// Constructs a AmapFlutterBasePlatform.
  AmapFlutterBasePlatform() : super(token: _token);

  static final Object _token = Object();

  static AmapFlutterBasePlatform _instance = MethodChannelAmapFlutterBase();

  /// The default instance of [AmapFlutterBasePlatform] to use.
  ///
  /// Defaults to [MethodChannelAmapFlutterBase].
  static AmapFlutterBasePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AmapFlutterBasePlatform] when
  /// they register themselves.
  static set instance(AmapFlutterBasePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
