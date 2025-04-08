import 'package:flutter/material.dart';
import 'package:wp2ui/chatscreen.dart';
import 'package:wp2ui/communityscreen.dart';
import 'package:wp2ui/updatsscreen.dart';
import 'package:wp2ui/whatsappuiscreen.dart';

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
