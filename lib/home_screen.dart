import 'package:flutter/material.dart';

import 'banners.dart';
import 'contents.dart';
import 'notices.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Contents(),
        const SizedBox(height: 48.0),
        Banners(),
        const SizedBox(height: 48.0),
        Notices()
      ],
    );
  }
}
