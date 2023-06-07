import 'package:flutter/material.dart';

class SongType extends StatelessWidget {
  const SongType({super.key, required this.musicType, this.color});
  final String musicType;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(5), color: color),
        child: Center(
            child: Text(
          musicType,
          style: const TextStyle(color: Colors.white),
        )));
  }
}
