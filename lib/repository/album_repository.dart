import 'package:bloc_practice/data_provider/api_provider.dart';
import 'package:bloc_practice/model/albums.dart';

class AlbumRepository {
  final AlbumProvider _albumProvider = AlbumProvider();

  Future<Albums> fetchAllAlbums() async => _albumProvider.fetchAlbumList();
}
