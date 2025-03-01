import 'package:flutter_test/flutter_test.dart';
import 'package:amap_flutter_base/amap_flutter_base.dart';
import 'package:amap_flutter_base/amap_flutter_base_platform_interface.dart';
import 'package:amap_flutter_base/amap_flutter_base_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAmapFlutterBasePlatform
    with MockPlatformInterfaceMixin
    implements AmapFlutterBasePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AmapFlutterBasePlatform initialPlatform = AmapFlutterBasePlatform.instance;

  test('$MethodChannelAmapFlutterBase is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAmapFlutterBase>());
  });

  test('getPlatformVersion', () async {
    AmapFlutterBase amapFlutterBasePlugin = AmapFlutterBase();
    MockAmapFlutterBasePlatform fakePlatform = MockAmapFlutterBasePlatform();
    AmapFlutterBasePlatform.instance = fakePlatform;

    expect(await amapFlutterBasePlugin.getPlatformVersion(), '42');
  });
}
