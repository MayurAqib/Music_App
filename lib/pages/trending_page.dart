import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/pages/favourites_page.dart';
import 'package:music_app/widgets/google_navbar.dart';
import 'package:music_app/widgets/icon_box.dart';
import 'package:music_app/widgets/song_type.dart';
import 'package:provider/provider.dart';
import '../provider/song_provider.dart';
import '../widgets/music_list_tile.dart';
import '../widgets/song_tile.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({super.key});
  static const routeName = '/trendingPage';
  @override
  State<TrendingPage> createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  List<bool> isPlayingList = [false, false, false];

  List<AudioPlayer> audioPlayers = [
    AudioPlayer(),
    AudioPlayer(),
    AudioPlayer(),
  ];

  void playMusic() async {
    await audioPlayers[0].setSource(AssetSource('arcade.mp3'));
    await audioPlayers[1].setSource(AssetSource('levitating.mp3'));
    await audioPlayers[2].setSource(AssetSource('dreamer.mp3'));
  }

  @override
  void initState() {
    super.initState();
    playMusic();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final data = Provider.of<SongProvider>(context);
    final topSongs = data.topSongs();
    final songList = data.songsList();

    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 50,
                ),
                //todo: Row of Filter and Search Bar
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FavoritePage()));
                        },
                        child: const IconBox(
                          icon: Icons.filter_list,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                          child: TextField(
                        cursorColor: Colors.grey.shade400,
                        style: TextStyle(
                          color: Colors.grey.shade400,
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12)),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: Colors.grey.shade400,
                            ),
                            prefixIcon: Icon(
                              CupertinoIcons.search,
                              color: Colors.grey.shade400,
                            ),
                            fillColor: const Color.fromARGB(255, 92, 88, 102),
                            filled: true),
                      ))
                    ],
                  ),
                ),

                //todo: TRENDING RIGHT NOW TEXT
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Trending right now',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //todo: SONGS TILE
                Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: SizedBox(
                        height: 180,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: topSongs.length,
                            itemBuilder: (ctx, index) {
                              return ChangeNotifierProvider.value(
                                value: topSongs[index],
                                child: SongsTile(
                                  icon: isPlayingList[index]
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                  onTap: () async {
                                    if (isPlayingList[index]) {
                                      await audioPlayers[index].pause();
                                      setState(() {
                                        isPlayingList[index] = false;
                                      });
                                    } else {
                                      await audioPlayers[index].resume();
                                      setState(() {
                                        isPlayingList[index] = true;
                                      });
                                    }
                                  },
                                ),
                              );
                            }))),
                const SizedBox(
                  height: 20,
                ),
                //todo: Music type
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: SizedBox(
                    height: 40,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      SongType(
                        musicType: 'Trending right now',
                        color: Colors.deepPurple.shade900,
                      ),
                      const SongType(musicType: 'Rock'),
                      const SongType(musicType: 'Hip Hop'),
                      const SongType(musicType: 'Electro'),
                      const SongType(musicType: 'Classic'),
                      const SongType(musicType: 'Old'),
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //todo: songs listTile
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: songList.length,
                    itemBuilder: (context, index) {
                      return ChangeNotifierProvider.value(
                          value: songList[index], child: const MusicListTile());
                    },
                  ),
                )
              ],
            ),
            //todo: Google Navbar
            Positioned(
                left: 0,
                right: 0,
                top: height - 90,
                child: const GoogleNavbar())
          ],
        ));
  }
}
