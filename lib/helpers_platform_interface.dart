import 'package:helpers/models.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'helpers_method_channel.dart';

abstract class HelpersPlatform extends PlatformInterface {
  /// Constructs a HelpersPlatform.
  HelpersPlatform() : super(token: _token);

  static final Object _token = Object();

  static HelpersPlatform _instance = MethodChannelHelpers();

  /// The default instance of [HelpersPlatform] to use.
  ///
  /// Defaults to [MethodChannelHelpers].
  static HelpersPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HelpersPlatform] when
  /// they register themselves.
  static set instance(HelpersPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> badgeUpdate(int value) {
    throw UnimplementedError(
      'badgeUpdate(int value) has not been implemented.',
    );
  }

  Future<bool> badgeUpdateRequest() {
    throw UnimplementedError(
      'badgeUpdateRequest() has not been implemented.',
    );
  }

  Future<String?> getIdfa() {
    throw UnimplementedError(
      'getIdfa() has not been implemented.',
    );
  }

  Future<TrackingRequestStatus> requestTrackingAuthorization() {
    throw UnimplementedError(
      'requestTrackingAuthorization() has not been implemented.',
    );
  }

  Future<void> openAppSettings() {
    throw UnimplementedError(
      'openAppSettings() has not been implemented.',
    );
  }

  Future<void> openAppNotificationSettings() {
    throw UnimplementedError(
      'openAppNotificationSettings() has not been implemented.',
    );
  }

  Future<DeviceInfo> getDeviceInfo() {
    throw UnimplementedError(
      'getDeviceInfo() has not been implemented.',
    );
  }
}
