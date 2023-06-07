import 'package:flutter/cupertino.dart';

class AlbumModel extends ChangeNotifier {
  final String name;
  final String desc;
  final String imagePath;
  AlbumModel({required this.name, required this.desc, required this.imagePath});
}
