import 'package:chat_app/Pages/chat_page.dart';
import 'package:chat_app/Pages/login_page.dart';
import 'package:chat_app/Pages/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id:(context)=>LoginPage(),
        RegisterPage.id:(context)=>RegisterPage(),
        ChatPage.id:(context)=>ChatPage(),
      },
      debugShowCheckedModeBanner: false,
     initialRoute: LoginPage.id,
    );
  }
}
