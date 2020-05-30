import 'package:chat/ui/android/components/drawer.options.dart';
import 'package:chat/ui/android/components/profile.form.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil"),
      ),
      drawer: DrawerOptions(),
      body: ProfileForm(),
    );
  }
}