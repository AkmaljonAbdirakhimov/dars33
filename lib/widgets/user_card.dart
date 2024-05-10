import 'package:flutter/material.dart';

class UserCard extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String phone;

  UserCard({
    required this.imageUrl,
    required this.name,
    required this.phone,
  });

  @override
  State<UserCard> createState() {
    return _UserCardState();
  }
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                widget.imageUrl,
              ),
            ),
            const SizedBox(width: 20),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    widget.phone,
                  ),
                ],
              ),
            ),
            const Spacer(),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              position: PopupMenuPosition.under,
              itemBuilder: (ctx) {
                return const [
                  PopupMenuItem(
                    child: Text("Edit"),
                  ),
                  PopupMenuItem(
                    child: Text("Delete"),
                  ),
                ];
              },
            ),
          ],
        ),
      ),
    );
  }
}
