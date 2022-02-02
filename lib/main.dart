import 'package:flutter/material.dart';
import 'package:cwa1/model/constants.dart';
import 'package:cwa1/viewscreen/gift_screen.dart';
import 'package:cwa1/viewscreen/image_screen.dart';
import 'package:cwa1/viewscreen/infotable_screen.dart';
import 'package:cwa1/viewscreen/start_scree.dart';

void main() {
  runApp(const Cwa1App());
}

class Cwa1App extends StatelessWidget {
  const Cwa1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: Constant.dev,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'StardosStencil',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 64.0,
            color: Colors.red,
          ),
          button: TextStyle(
            fontSize: 32.0,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.deepPurple,
            elevation: 12.0,
            shadowColor: Colors.greenAccent,
            textStyle: const TextStyle(
              fontSize: 28.0,
            ),
          ),
        ),
      ),
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (BuildContext context) => const StartScreen(),
        ImageScreen.routeName: (context) => const ImageScreen(),
        GiftScreen.routeName: (context) => const GiftScreen(),
        InfoTableScreen.routeName: (context) => const InfoTableScreen(),
      },
    );
  }
}
