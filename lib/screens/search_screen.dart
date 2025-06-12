import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "🔍 Search",
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}
