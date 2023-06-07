import 'package:flutter/material.dart';
import 'package:music_app/provider/song_model.dart';

class SongProvider extends ChangeNotifier {
  static List<SongModel> topSong = [
    SongModel(
        id: 's3',
        color: const Color.fromARGB(255, 17, 2, 101),
        imageUrl:
            'https://wiwibloggs.com/wp-content/uploads/2019/03/0ddf79caebc3c8042cd636ac0fe61b7d.png',
        singerName: 'Duncan Laurence',
        songName: 'Arcade'),
    SongModel(
        color: const Color.fromARGB(255, 4, 5, 61),
        id: 's1',
        imageUrl:
            'https://www.rollingstone.com/wp-content/uploads/2020/11/dua-lipa-amas.jpg',
        singerName: 'Dua Lipa',
        songName: 'Levitating'),
    SongModel(
        id: 's2',
        color: const Color.fromARGB(255, 84, 28, 11),
        imageUrl:
            'https://i.discogs.com/He-5z2DMvkkAPVsgsuKtP-1NOxVo9WwfBwtZxJ-ozWM/rs:fit/g:sm/q:90/h:426/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9BLTQ4Mjc2/MjItMTY0MjY0MjIy/Mi0zMDM3LmpwZWc.jpeg',
        singerName: 'Alan Walker',
        songName: 'Dreamer'),
  ];

  static List<SongModel> songList = [
    SongModel(
        id: 's4',
        imageUrl:
            'https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bXVzaWN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60',
        singerName: 'Miley Cyrus',
        songName: 'Flowers'),
    SongModel(
        id: 's4',
        imageUrl:
            'https://images.unsplash.com/photo-1459749411175-04bf5292ceea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fG11c2ljfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60',
        singerName: 'Libianca',
        songName: 'People'),
    SongModel(
        id: 's4',
        imageUrl:
            'https://images.unsplash.com/photo-1506157786151-b8491531f063?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fG11c2ljfGVufDB8fDB8fHww&auto=format&fit=crop&w=900&q=60',
        singerName: 'Enisa',
        songName: 'Blame it on me'),
    SongModel(
        id: 's4',
        imageUrl:
            'https://images.unsplash.com/photo-1446057032654-9d8885db76c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fG11c2ljfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60',
        singerName: 'Ed Sheeran',
        songName: 'Salt Water'),
    SongModel(
        id: 's4',
        imageUrl:
            'https://images.unsplash.com/photo-1588693951525-7b0be0fc710f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
        singerName: 'Taylor Swift',
        songName: 'Anti-Hero'),
  ];

  List<SongModel> topSongs() {
    return topSong;
  }

  List<SongModel> songsList() {
    return songList;
  }
}
