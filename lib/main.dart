import 'package:firebase_app/firebase_options.dart';
import 'package:firebase_app/provider/firebase_provider.dart';
import 'package:firebase_app/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (_) => FirebaseProvider(),
        child: MaterialApp(
          navigatorKey: navigatorKey,
          home: const ChatScreen(),
        ),
      );
}
