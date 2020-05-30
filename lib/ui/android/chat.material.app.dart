import 'package:chat/ui/android/pages/home.page.dart';
import 'package:flutter/material.dart';

class ChatMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        iconTheme: IconThemeData(
          color: Colors.purple
        )
      ),
      home: HomePage(),
    );
  }
}