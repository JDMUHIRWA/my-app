import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String status;
  final int badgeCount;
  final bool notRead;

  const ChatTile({
    required this.imagePath,
    required this.title,
    required this.status,
    this.badgeCount = 0,
    this.notRead = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
      child: Row(
        children: [
          // Avatar
          CircleAvatar(
            radius: 28,
            backgroundImage:
                imagePath.startsWith('http')
                    ? NetworkImage(imagePath)
                    : AssetImage(imagePath) as ImageProvider,
          ),
          SizedBox(width: 16),

          // Title + Status
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  status,
                  style: TextStyle(
                    color: notRead ? Colors.green : Colors.grey,
                    fontSize: 13,
                    fontWeight: notRead ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),

          // Badge (optional)
          if (badgeCount > 0)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                '$badgeCount',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
