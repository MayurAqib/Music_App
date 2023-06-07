import 'package:flutter/material.dart';
import 'package:music_app/pages/favourites_page.dart';
import 'package:music_app/pages/trending_page.dart';
import 'package:music_app/provider/album_provider.dart';
import 'package:music_app/provider/song_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => SongProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => AlbumProvider(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const TrendingPage(),
          routes: {
            TrendingPage.routeName: (context) => const TrendingPage(),
            FavoritePage.routeName: (context) => const FavoritePage(),
          },
        ));
  }
}
