import 'dart:async';
import 'dart:isolate';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final progressCalculatorServiceProvider = Provider<ProgressCalculatorService>((
  ref,
) {
  return ProgressCalculatorService();
});

class ProgressCalculatorService {
  Isolate? _isolate;
  final _controller = StreamController<Duration>.broadcast();
  Timer? _timer;
  int _totalMinutes = 0;

  Stream<Duration> get timerStream => _controller.stream;

  void startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(minutes: 1), (timer) {
      _totalMinutes++;
      _controller.add(Duration(minutes: _totalMinutes));
    });
  }

  Future<void> startIsolate() async {
    final receivePort = ReceivePort();
    _isolate = await Isolate.spawn(_isolateEntry, receivePort.sendPort);
  }

  static void _isolateEntry(SendPort sendPort) {
    Timer.periodic(const Duration(minutes: 1), (timer) {
      sendPort.send(DateTime.now());
    });
  }

  double calculateSavings(double dailyCigaretteCost) {
    return _totalMinutes * (dailyCigaretteCost / 1440);
  }

  void dispose() {
    _timer?.cancel();
    _isolate?.kill();
    _controller.close();
  }
}
