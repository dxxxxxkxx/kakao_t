import 'package:flutter/material.dart';

class Contents extends StatelessWidget {
  const Contents({super.key});

  Widget _buildColumnButton({
    required IconData? iconData,
    required String label,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Icon(iconData, size: 60.0),
          const SizedBox(height: 12.0),
          Text(label)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildColumnButton(
              iconData: Icons.local_taxi_outlined,
              label: '택시',
            ),
            _buildColumnButton(iconData: Icons.local_taxi, label: '블랙'),
            _buildColumnButton(iconData: Icons.pedal_bike, label: '바이크'),
            _buildColumnButton(iconData: Icons.drive_eta_outlined, label: '대리')
          ],
        ),
        const SizedBox(height: 40.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildColumnButton(iconData: Icons.local_parking, label: '주차'),
            _buildColumnButton(iconData: Icons.join_full, label: '카풀'),
            _buildColumnButton(iconData: Icons.navigation, label: '내비'),
            _buildColumnButton(iconData: null, label: '')
          ],
        )
      ],
    );
  }
}
