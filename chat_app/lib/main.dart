import 'package:chat_application/screens/chat_screen.dart';
import 'package:chat_application/screens/login_screen.dart';
import 'package:chat_application/screens/register_screen.dart';
import 'package:chat_application/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); 
  runApp(FlashChat());
}
class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes:{
        WelcomeScreen.id:(context)=>const WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        RegisterScreen.id:(context)=>RegisterScreen(),
        ChatScreen.id:(context)=>ChatScreen(),
      },
    );
  }
}