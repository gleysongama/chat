import 'dart:io' show Platform;
import 'package:chat/ui/android/chat.material.app.dart';
import 'package:chat/ui/ios/chat.cupertino.app.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() {
  Platform.isAndroid ? runApp(ChatMaterialApp()) : runApp(ChatCupertinoApp());

  // Firestore.instance
  //          .collection('mensagens')
  //          .document()
  //          .setData(
  //           {
  //             'texto' : 'Sim, tudo e com você ?',
  //             'from' : 'João',
  //             'read' : false
  //           });
}