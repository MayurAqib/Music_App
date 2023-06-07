import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/provider/song_model.dart';
import 'package:provider/provider.dart';

class SongsTile extends StatelessWidget {
  const SongsTile({super.key, required this.icon, required this.onTap});
  final IconData icon;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    final songs = Provider.of<SongModel>(context);
    return Container(
      width: 230,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(28),
          image: DecorationImage(
              image: NetworkImage(songs.imageUrl), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 30),
              child: Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: songs.color, borderRadius: BorderRadius.circular(22)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' ${songs.songName}',
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          const Icon(
                            CupertinoIcons.double_music_note,
                            size: 15,
                            color: Colors.white,
                          ),
                          Text(
                            ' - ${songs.singerName}',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                  InkWell(
                    onTap: onTap,
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
