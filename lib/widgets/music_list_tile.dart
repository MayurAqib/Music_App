import 'package:flutter/material.dart';
import 'package:music_app/provider/song_model.dart';
import 'package:provider/provider.dart';

class MusicListTile extends StatelessWidget {
  const MusicListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final songInfo = Provider.of<SongModel>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Colors.black,
            child: Image.network(
              songInfo.imageUrl,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          songInfo.songName,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            const Icon(
              Icons.person,
              size: 15,
              color: Colors.grey,
            ),
            const SizedBox(width: 3),
            Text(
              songInfo.singerName,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
        trailing: const Icon(
          Icons.favorite_outline,
          color: Colors.white,
        ),
      ),
    );
  }
}
