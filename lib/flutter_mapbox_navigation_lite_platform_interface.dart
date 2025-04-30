import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_mapbox_navigation_lite_method_channel.dart';

abstract class FlutterMapboxNavigationLitePlatform extends PlatformInterface {
  /// Constructs a FlutterMapboxNavigationLitePlatform.
  FlutterMapboxNavigationLitePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterMapboxNavigationLitePlatform _instance = MethodChannelFlutterMapboxNavigationLite();

  /// The default instance of [FlutterMapboxNavigationLitePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterMapboxNavigationLite].
  static FlutterMapboxNavigationLitePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterMapboxNavigationLitePlatform] when
  /// they register themselves.
  static set instance(FlutterMapboxNavigationLitePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
