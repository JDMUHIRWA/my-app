import 'package:flutter/material.dart';
import 'routes/main_navigation.dart';

class SpotifyClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MainNavigation(),
    );
  }
}
