import 'album.dart';

class Albums {
  late List<Album> albums;

  Albums({required this.albums});

  Albums.fromJSON(List<dynamic> json) {
    albums = List<Album>.empty(growable: true);
    for (dynamic val in json) {
      albums.add(Album.fromJSON(val));
    }
  }
}
