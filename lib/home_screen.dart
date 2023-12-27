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
        Contents(),
        SizedBox(height: 32.0),
        Banners(),
        SizedBox(height: 32.0),
        Notices()
      ],
    );
  }
}
