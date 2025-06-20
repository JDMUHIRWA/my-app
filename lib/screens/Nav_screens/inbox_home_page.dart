import 'package:flutter/material.dart';
import '../../widgets/profile_avatar.dart';
import '../../widgets/tab_toggle_buttons.dart';
import '../../widgets/chat_tile.dart';
import '../../widgets/now_playing_bar.dart';
import '../../constants/app-colors.dart';
import '../../screens/chat_screens/chat_screen.dart';

class InboxHomePage extends StatelessWidget {
  const InboxHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Row(
          children: [ProfileAvatar(), SizedBox(width: 20), TabToggleButtons()],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
            child: Text(
              'Chats',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ChatTile(
                  imagePath:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVemrm1CtEUTDwnFTJrvDNt0lpBR-vEpiXRw&s',
                  title: 'Night Drivers',
                  status: 'New song added • 1h',
                  badgeCount: 1,
                  onTap: () {
                    // Handle tap on Night Drivers chat tile
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (_) => ChatScreen(contactName: 'Night Drivers'),
                      ),
                    );
                  },
                ),
                ChatTile(
                  imagePath:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ99UpPck0m1NkmQNB5K9-Zmr_7p1qAypRDng&s',
                  title: 'Muhirwa',
                  status: 'Playlist update • 4h',
                  notRead: false,
                ),
                ChatTile(
                  imagePath:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQfD2_ZAf_l86lTFYEzHSkQEeV__JTUyLI9Q&s',
                  title: 'Drizzy club',
                  status: 'New songs from Ivan • 2d',
                  badgeCount: 2,
                  notRead: true,
                ),
                ChatTile(
                  imagePath:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIS4VuIKs3YjObiyW8M0NzDAkx8BEhLzLhEA&s',
                  title: 'Ishow Speed Sui',
                  status: 'Bro this song firefire 🤪',
                  badgeCount: 2,
                  notRead: true,
                ),
                ChatTile(
                  imagePath:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCrI0n3dFkZfZwU0AAbLoFGjnxk52mRTOhHw&s',
                  title: 'Kai Cenat',
                  status: 'You sent a song • 3h',
                ),
              ],
            ),
          ),
          Positioned(left: 0, right: 0, bottom: 0, child: NowPlayingBar()),
        ],
      ),
    );
  }
}
