import 'package:covid/screens/home_screen.dart';
import 'package:covid/screens/loading.dart';
import 'package:flutter/material.dart';

import 'contants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Covid-19 App',
      theme: ThemeData(
        primaryColor: PrimaryColorL,
        scaffoldBackgroundColor: BackgroundColorL,
        textTheme: Theme.of(context).textTheme.apply(displayColor: TextColorL),
      ),
    );
  }
}
