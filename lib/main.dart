import 'package:flutter/material.dart';

import 'main_screen.dart';

void main() {
  runApp(const KakaoT());
}

class KakaoT extends StatelessWidget {
  const KakaoT({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kakao T',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainScreen(),
    );
  }
}
