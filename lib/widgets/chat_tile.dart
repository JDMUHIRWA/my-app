import 'package:flutter/material.dart';
import '../constants/app-colors.dart';

class ChatTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String status;
  final int badgeCount;
  final bool notRead;
  final VoidCallback? onTap;

  const ChatTile({
    required this.imagePath,
    required this.title,
    required this.status,
    this.badgeCount = 0,
    this.notRead = false,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundImage:
                  imagePath.startsWith('http')
                      ? NetworkImage(imagePath)
                      : AssetImage(imagePath) as ImageProvider,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    status,
                    style: TextStyle(
                      color: notRead ? AppColors.green : AppColors.grey,
                      fontSize: 13,
                      fontWeight: notRead ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            if (badgeCount > 0)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: AppColors.green,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  '$badgeCount',
                  style: TextStyle(
                    color: AppColors.background,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
