import 'package:chat/ui/ios/pages/home.page.dart';
import 'package:flutter/cupertino.dart';

class ChatCupertinoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "Chat",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}