import 'dart:async';
import 'package:flutter/material.dart';

class CountdownProvider extends ChangeNotifier {
  int _timeLeft = 300;

  int get timeLeft => _timeLeft;
  bool get isTimerFinished => _timeLeft == 0;


  Timer? _timer;

  void startCountdown() {
    _timeLeft = 120;
    notifyListeners();

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_timeLeft > 0) {
        _timeLeft--;
        notifyListeners();
      } else {
        _timer?.cancel();
      }
    });
  }

  void stopCountdown() {
    _timer?.cancel();
    _timeLeft = 0;
    notifyListeners();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
