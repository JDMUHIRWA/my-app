import 'package:flutter/material.dart';

class NowPlayingBar extends StatelessWidget {
  const NowPlayingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFF031C1C),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          // Album Art
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCPqJcN6w7WcuUIsy7gxdqg1TboIKUMXMhbg&s',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),

          // Song Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Isaka (6cam)",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Ciza, Jazzworx & Thukuthela",
                  style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                ),
              ],
            ),
          ),

          // Play/Pause Button
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.devices, color: Colors.white, size: 25),
                onPressed: () {
                  // Next button logic
                },
              ),
              IconButton(
                icon: Icon(
                  IconData(0xe47c, fontFamily: 'MaterialIcons'),
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {
                  // Pause button logic
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
