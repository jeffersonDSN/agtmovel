import 'package:agtmovel/src/theme/app_color.dart';
import 'package:flutter/material.dart';

class GriViewCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const GriViewCard({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48,
              color: AppColor.primaryColorSwatch,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
