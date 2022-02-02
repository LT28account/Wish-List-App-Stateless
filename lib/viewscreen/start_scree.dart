import 'package:flutter/material.dart';
import 'package:cwa1/viewscreen/gift_screen.dart';
import 'package:cwa1/viewscreen/image_screen.dart';
import 'package:cwa1/viewscreen/infotable_screen.dart';
import 'package:cwa1/viewscreen/view/view_util.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/startScreen';

  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wish List'),
        actions: [
          IconButton(
            onPressed: () {
              showSnackBar(
                context: context,
                message: 'Share button pressed',
              );
            },
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.card_giftcard,
              size: 150.0,
              color: Colors.blue[200],
            ),
            Text(
              'Gift Ideas for Friends',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, InfoTableScreen.routeName),
              child: Text(
                'Wish List Information',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, ImageScreen.routeName),
              child: Text(
                'Wish List Images',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, GiftScreen.routeName),
              child: Text(
                'Gift an Item',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
