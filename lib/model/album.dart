class Album {
  int? userId;
  int? id;
  String? title;
  Album({this.userId, this.id, this.title});

  factory Album.fromJSON(Map<String, dynamic> json) =>
      Album(userId: json['userId'], id: json['id'], title: json['title']);
}
