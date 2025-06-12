import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundImage: AssetImage(
        'assets/images/IMG.JPG', // sample avatar image
      ),
    );
  }
}
