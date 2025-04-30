import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_mapbox_navigation_lite/flutter_mapbox_navigation_lite.dart';
import 'package:flutter_mapbox_navigation_lite/flutter_mapbox_navigation_lite_platform_interface.dart';
import 'package:flutter_mapbox_navigation_lite/flutter_mapbox_navigation_lite_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterMapboxNavigationLitePlatform
    with MockPlatformInterfaceMixin
    implements FlutterMapboxNavigationLitePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterMapboxNavigationLitePlatform initialPlatform = FlutterMapboxNavigationLitePlatform.instance;

  test('$MethodChannelFlutterMapboxNavigationLite is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterMapboxNavigationLite>());
  });

  test('getPlatformVersion', () async {
    FlutterMapboxNavigationLite flutterMapboxNavigationLitePlugin = FlutterMapboxNavigationLite();
    MockFlutterMapboxNavigationLitePlatform fakePlatform = MockFlutterMapboxNavigationLitePlatform();
    FlutterMapboxNavigationLitePlatform.instance = fakePlatform;

    expect(await flutterMapboxNavigationLitePlugin.getPlatformVersion(), '42');
  });
}
