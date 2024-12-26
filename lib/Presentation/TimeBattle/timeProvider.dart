import 'dart:async';
import 'package:flutter/material.dart';

class TimerProvider with ChangeNotifier {
  int _remainingTime = 15;
  final int _initialCountdownTime = 15;
  Timer? _timer;

  int get remainingTime => _remainingTime;
  double get progress => _remainingTime / _initialCountdownTime;

  void startTimer({required VoidCallback onComplete}) {
    _remainingTime = _initialCountdownTime;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        _remainingTime--;
        notifyListeners();
      } else {
        timer.cancel();
        onComplete();
      }
    });
  }

  void resetTimer() {
    _timer?.cancel();
    _remainingTime = _initialCountdownTime;
    notifyListeners();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
