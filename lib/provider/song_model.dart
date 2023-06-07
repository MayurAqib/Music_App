import 'package:flutter/material.dart';

class SongModel extends ChangeNotifier {
  final String songName;
  final String id;
  final String singerName;
  final String imageUrl;
  final Color? color;
  SongModel(
      {required this.id,
      this.color,
      required this.imageUrl,
      required this.singerName,
      required this.songName});
}
