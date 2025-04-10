import 'package:flutter/material.dart';
import 'package:wp2ui/screens/homescreens/chatscreen/chatscreen.dart';
import 'package:wp2ui/screens/homescreens/communityscreen/communityscreen.dart';
import 'package:wp2ui/screens/homescreens/updatesscreen/updatsscreen.dart';
import 'package:wp2ui/screens/homescreens/whatsappuiscreen.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Whatsappuiscreen()
    );
  }
}
