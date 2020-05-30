import 'package:chat/ui/android/components/chat.message.dart';
import 'package:chat/ui/android/components/drawer.options.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mensagens"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Buscar',
            onPressed: () {
            // scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
        ],
      ),
      drawer: DrawerOptions(),
      body: ChatMessage(),
    );
  }
}