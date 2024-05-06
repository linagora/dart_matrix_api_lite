class DebugUtils {

  static final DebugUtils _instance = DebugUtils._internal();

  DebugUtils._internal();

  factory DebugUtils() {
    return _instance;
  }

  bool get isDebugMode {
    bool inDebugMode = false;
    assert(inDebugMode = true);
    return inDebugMode;
  }
}