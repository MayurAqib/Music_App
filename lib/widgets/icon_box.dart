import 'package:flutter/material.dart';

class IconBox extends StatelessWidget {
  const IconBox({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 17),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromARGB(255, 92, 88, 102)),
      child: Icon(
        icon,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
