class DebugUtils {
  static final DebugUtils _instance = DebugUtils._internal();

  static bool _enableLogs = false;

  DebugUtils._internal();

  factory DebugUtils() {
    return _instance;
  }

  void enableLogs(bool enable) {
    _enableLogs = enable;
  }

  bool get isDebugMode {
    return _enableLogs;
  }
}
