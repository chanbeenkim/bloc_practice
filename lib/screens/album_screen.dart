import 'package:bloc_practice/model/albums.dart';
import 'package:flutter/material.dart';

import '../bloc/album_bloc.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({super.key});

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  final AlbumBloc _albumBloc = AlbumBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List"),
      ),
      body: StreamBuilder<Albums>(
        stream: _albumBloc.allAlbums,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Albums? albumList = snapshot.data;
            return ListView.builder(
              itemCount: albumList?.albums.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text("ID: ${albumList?.albums[index].id.toString()}"),
                      Text("Title: ${albumList?.albums[index].title}")
                    ],
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return const CircularProgressIndicator(
              strokeWidth: 2,
            );
          }
        },
      ),
    );
  }
}
