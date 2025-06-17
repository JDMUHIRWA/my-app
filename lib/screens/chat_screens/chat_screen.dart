import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String contactName;

  const ChatScreen({super.key, required this.contactName});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, dynamic>> _messages = [
    {'text': 'Bro this new album 🔥', 'isMe': false},
    {
      'isMe': true,
      'text': '!!!',
      'sharedSong': {
        'title': 'OWA OWA',
        'artist': 'Lil Teccaa',
        'imageUrl':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ9x7aHSthaYmRQZQcMf2-PmsgGXAsadrlCA&s',
      },
    },
    {'text': 'Adding it now!', 'isMe': false},
  ];

  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;

    setState(() {
      _messages.add({'text': _controller.text.trim(), 'isMe': true});
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chat with ${widget.contactName}")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final msg = _messages[index];
                return Align(
                  alignment:
                      msg['isMe']
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color:
                          msg['isMe']
                              ? Colors.green.shade800
                              : Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          msg['text'],
                          style: TextStyle(color: Colors.white),
                        ),
                        if (msg['sharedSong'] != null) ...[
                          SizedBox(height: 10),
                          _SongPreview(song: msg['sharedSong']),
                        ],
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade700),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Type a message...",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.green),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SongPreview extends StatelessWidget {
  final Map<String, dynamic> song;

  const _SongPreview({required this.song});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            song['imageUrl'],
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              song['title'],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              song['artist'],
              style: TextStyle(color: Colors.grey[300], fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
