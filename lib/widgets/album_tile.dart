import 'package:flutter/material.dart';
import 'package:music_app/provider/album_models.dart';
import 'package:provider/provider.dart';

class AlbumTile extends StatelessWidget {
  const AlbumTile({super.key});

  @override
  Widget build(BuildContext context) {
    final album = Provider.of<AlbumModel>(context);
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black,
                image: DecorationImage(
                    image: NetworkImage(album.imagePath), fit: BoxFit.cover)),
          ),
          Text(
            album.name,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            album.desc,
            style: TextStyle(color: Colors.grey.shade500),
          )
        ],
      ),
    );
  }
}
