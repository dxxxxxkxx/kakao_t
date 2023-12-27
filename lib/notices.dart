import 'package:flutter/material.dart';

class Notices extends StatelessWidget {
  final List<String> _notices = [
    '[이벤트] 추석에 KTX 공항, 터미널 이용한다면?',
    '3.4.3 버전 업데이트 안내',
    '3.4.2 버전 업데이트 안내',
    '3.4.1 버전 업데이트 안내',
    '3.4.0 버전 업데이트 안내'
  ];

  Notices({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: _notices
          .map((notice) => ListTile(
                onTap: () {},
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.notifications_none),
                title: Text(
                  notice,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ))
          .toList(),
    );
  }
}
