import 'package:flutter/cupertino.dart';
import 'package:music_app/provider/album_models.dart';

class AlbumProvider extends ChangeNotifier {
  static List<AlbumModel> albumList = [
    AlbumModel(
        name: 'Bright Hits',
        desc: 'Always never',
        imagePath:
            'https://img.freepik.com/premium-photo/dj-playing-music-sound-mixer-night-club_53876-18678.jpg?size=626&ext=jpg'),
    AlbumModel(
        name: 'Millions',
        desc: 'Fever Fm',
        imagePath:
            'https://images.unsplash.com/photo-1478147427282-58a87a120781?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE0fHxtdXNpYyUyMGJhY2tncm91bmR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'),
    AlbumModel(
        name: 'Family Tourism',
        desc: 'Red FM',
        imagePath:
            'https://images.unsplash.com/photo-1614149162883-504ce4d13909?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bXVzaWMlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww&w=1000&q=80'),
    AlbumModel(
        name: 'Midnight Symphony',
        desc: 'WYN Studio',
        imagePath:
            'https://images.unsplash.com/photo-1582220107107-590dc8b0fad3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fG11c2ljJTIwYmFja2dyb3VuZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    AlbumModel(
        name: 'Soulful Reflections',
        desc: 'Pocket FM',
        imagePath:
            'https://images.unsplash.com/photo-1536367931225-4b59e718c362?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTUwfHxtdXNpYyUyMGJhY2tncm91bmR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'),
    AlbumModel(
        name: 'Whispers in the Wind',
        desc: 'Coffee Time',
        imagePath:
            'https://images.unsplash.com/photo-1524678606370-a47ad25cb82a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fG11c2ljJTIwYmFja2dyb3VuZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    AlbumModel(
        name: 'Broken Pieces',
        desc: 'Ishq Pods',
        imagePath:
            'https://images.unsplash.com/photo-1556296569-44d434fb28d6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTJ8fG11c2ljJTIwYmFja2dyb3VuZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    AlbumModel(
        name: 'Melancholy Nights',
        desc: 'Nostalgia',
        imagePath:
            'https://images.unsplash.com/photo-1487954152950-e0584673b7f3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDF8fG11c2ljJTIwYmFja2dyb3VuZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'),
  ];
  List<AlbumModel> listOfAlbum() {
    return albumList;
  }
}
