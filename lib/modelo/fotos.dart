class Fotos {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Fotos({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory Fotos.fromJson(dynamic json) {
    String txt = "hello world";
    int pos = txt.indexOf("world");

    return Fotos(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );
  }
}

/*

{
"albumId": 1,
"id": 1,
"title": "accusamus beatae ad facilis cum similique qui sunt",
"url": "https://via.placeholder.com/600/92c952",
"thumbnailUrl": "https://via.placeholder.com/150/92c952"
},
{
 */
