import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

void main() {
  runApp(App());
}

const List<String> urls = [
  'https://placekitten.com/640/360',
  'https://placekitten.com/640/360',
  'https://placekitten.com/640/360',
  'https://placekitten.com/640/360',
  'https://placekitten.com/640/360',
  'https://placekitten.com/640/360'
];

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Viewer Pluralsight',
      home: GalleryPage(
        title: 'Image Gallery',
        urls: urls,
      ),
    );
  }
}

class GalleryPage extends StatelessWidget {
  final String title;
  final List<String> urls;

  const GalleryPage({required this.title, required this.urls});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: GridView.count(
        primary: false,
        crossAxisCount: 2,
        children: List.of(urls.map((url) => Photo(url: url))),
      ),
    );
  }
}

class Photo extends StatelessWidget {
  final String url;

  const Photo({required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Image.network(url),
    );
  }
}
