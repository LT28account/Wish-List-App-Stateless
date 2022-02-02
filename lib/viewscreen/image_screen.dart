import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  static const routeName = '/imageDesignClass';

  const ImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wish List Images'),
        ),
        body: ListView(
          children: [
            Text(
              'All-Clad Set',
              style: Theme.of(context).textTheme.headline5,
            ),
            Container(
              color: Colors.blueAccent,
              height: 300.0,
              child: Image.asset('images/all-clad.jfif'),
            ),
            Text(
              'Brooklinen Down Conforter',
              style: Theme.of(context).textTheme.headline5,
            ),
            Container(
              color: Colors.pink[50],
              height: 300.0,
              child: Image.asset('images/comforter.png'),
            ),
            Text(
              'Dyson Outsize Absolute+',
              style: Theme.of(context).textTheme.headline5,
            ),
            Container(
              color: Colors.redAccent,
              height: 200.0,
              child: Image.asset('images/dyson.jfif'),
            ),
            Text(
              'Brooklinen Classic Hardcore Sheet Bundle',
              style: Theme.of(context).textTheme.headline5,
            ),
            Container(
              color: Colors.tealAccent,
              height: 200.0,
              child: Image.asset('images/sheets.jpg'),
            ),
            Text(
              'Theragun mini',
              style: Theme.of(context).textTheme.headline5,
            ),
            Container(
              color: Colors.purple[100],
              height: 200.0,
              child: Image.asset('images/therabody.jpg'),
            ),
            Text(
              'Cartier Ballon Bleu de Cartier Watch',
              style: Theme.of(context).textTheme.headline5,
            ),
            Container(
              color: Colors.greenAccent,
              height: 200.0,
              child: Image.asset('images/watch.jfif'),
            ),
          ],
        ));
  }
}
