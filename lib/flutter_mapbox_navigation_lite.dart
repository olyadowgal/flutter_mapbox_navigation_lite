
import 'flutter_mapbox_navigation_lite_platform_interface.dart';

class FlutterMapboxNavigationLite {
  Future<String?> getPlatformVersion() {
    return FlutterMapboxNavigationLitePlatform.instance.getPlatformVersion();
  }
}
