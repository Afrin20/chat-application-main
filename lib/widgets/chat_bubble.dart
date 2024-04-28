import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final String userName; // Added user's name
  final Color color;

  const ChatBubble({Key? key, required this.message, required this.userName, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(50),
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white, // Customize as needed
              child: Text(
                userName[0].toUpperCase(),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                message,
                style: TextStyle(color: Colors.white), // Customize as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
