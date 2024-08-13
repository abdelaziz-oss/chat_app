import 'package:firebase_app/provider/firebase_provider.dart';
import 'package:firebase_app/screens/widgets/user_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  void initState() {
    Provider.of<FirebaseProvider>(context , listen: false).getAllUsers();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
      ),
      body: Consumer <FirebaseProvider>(builder : (context , value , child ){
        return  ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: value.users.length,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => UserItem(
          user: value.users[index],
        ),
      );
      })
     
    );
  }
}
