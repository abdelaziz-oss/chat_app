// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:firebase_app/models/user.dart';
import 'package:flutter/material.dart';

class UserItem extends StatefulWidget {
  const UserItem({
    super.key,
    required this.user,
  });
  final User user;

  @override
  State<UserItem> createState() => _UserItemState();
}

class _UserItemState extends State<UserItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(widget.user.image),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor:
                  widget.user.isOnline ? Colors.green : Colors.grey,
              radius: 5,
            ),
          ),
        ],
      ),
      title: Text(
        widget.user.name,
        style: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        'Last Active : ${(widget.user.lastActive)}',
        maxLines: 2,
        style: const TextStyle(
            color: Color.fromARGB(255, 206, 204, 199),
            overflow: TextOverflow.ellipsis,
            fontSize: 15),
      ),
    );
  }
}
