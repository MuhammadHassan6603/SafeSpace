import 'dart:async';
import 'package:flutter/material.dart';

class CountdownProvider extends ChangeNotifier {
  int _timeLeft = 300; // Countdown time in seconds (default is 5 minutes = 300 seconds)

  int get timeLeft => _timeLeft;

  Timer? _timer;

  // Start the countdown
  void startCountdown() {
    _timeLeft = 300; // Reset to 5 minutes
    notifyListeners();

    _timer?.cancel(); // Cancel any existing timer
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_timeLeft > 0) {
        _timeLeft--;
        notifyListeners();
      } else {
        _timer?.cancel(); // Stop the timer when countdown reaches 0
      }
    });
  }

  // Stop the countdown
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
