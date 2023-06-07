import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/provider/album_provider.dart';
import 'package:music_app/widgets/album_tile.dart';
import 'package:music_app/widgets/icon_box.dart';
import 'package:provider/provider.dart';

import '../widgets/google_navbar.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});
  static const routeName = '/favoritePage';

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final albumList = Provider.of<AlbumProvider>(context).listOfAlbum();

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 70),

                //todo: Row of icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const IconBox(icon: CupertinoIcons.back)),
                    const IconBox(icon: Icons.favorite_border)
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                //todo: text Recent fav
                const Text(
                  'Recent favourites',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                const SizedBox(
                  height: 20,
                ),
                //todo: Grid of Albums
                Expanded(
                  child: GridView.builder(
                    itemCount: albumList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1 / 1.33,
                            mainAxisSpacing: 35,
                            crossAxisSpacing: 15),
                    itemBuilder: (context, index) {
                      return ChangeNotifierProvider.value(
                        value: albumList[index],
                        child: const AlbumTile(),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          //Todo: google Navbar
          Positioned(
              left: 0, right: 0, top: height - 90, child: const GoogleNavbar()),
        ],
      ),
    );
  }
}
