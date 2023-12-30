import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'my_info_screen.dart';
import 'my_service_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const MyServiceScreen(),
    const MyInfoScreen()
  ];
  int _index = 0;

  List<BottomNavigationBarItem> _buildItems() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: '홈',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.assignment),
        label: '이용 서비스',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.account_box),
        label: '내 정보',
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          elevation: 4.0,
          shadowColor: Colors.black,
          title: const Text(
            'Kakao T',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: _screens[_index],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          selectedItemColor: Colors.blue,
          currentIndex: _index,
          items: _buildItems(),
        ),
      ),
    );
  }
}
