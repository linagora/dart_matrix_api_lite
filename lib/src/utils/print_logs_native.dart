import 'dart:developer';

import 'package:matrix_api_lite/matrix_api_lite.dart';

extension PrintLogs on LogEvent {

  void printOut() {
    var logsStr = title;
    if (Logs().nativeColors) {
      switch (level) {
        case Level.wtf:
          log('\x1B[31m$logsStr', stackTrace: stackTrace, error: exception, level: 5, time: DateTime.now());
          break;
        case Level.error:
          logsStr = logsStr;
          log('\x1B[31m $logsStr', stackTrace: stackTrace, error: exception, level: 4, time: DateTime.now());
          break;
        case Level.warning:
          log('\x1B[33m $logsStr', stackTrace: stackTrace, error: exception, level: 3, time: DateTime.now());
          break;
        case Level.info:
          log('\x1B[32m $logsStr', stackTrace: stackTrace, error: exception, level: 2, time: DateTime.now());
          break;
        case Level.debug:
          log('\x1B[34m $logsStr', stackTrace: stackTrace, error: exception, level: 1, time: DateTime.now());
          break;
        case Level.verbose:
          log(' $logsStr', stackTrace: stackTrace, error: exception, level: 0, time: DateTime.now());
          break;
      }
    }
  }
}
