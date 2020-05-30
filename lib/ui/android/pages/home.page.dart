import 'package:chat/shared/blocks/chat.block.dart';
import 'package:chat/ui/android/components/data.search.dart';
import 'package:chat/ui/android/components/drawer.options.dart';
import 'package:chat/ui/android/components/text.composer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = new ChatBloc();
  bool _isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search
            ), 
            onPressed: () {
              showSearch(                                
                context: context, 
                delegate: DataSearch()
              );
            }
          ),
        ],
      ),
      // appBar: AppBar(
      //   title: (!_isSearching
      //       ? Text("Chat")
      //       : TextField(
      //           autofocus: true,
      //           decoration: InputDecoration(
      //               hintText: "Buscar sala",
      //               hintStyle:
      //                   TextStyle(color: Colors.white70, fontSize: 18.0)),
      //           style: TextStyle(color: Colors.white, fontSize: 18.0),
      //         )),
      //   actions: <Widget>[
      //     _isSearching
      //         ? IconButton(
      //             icon: const Icon(Icons.cancel),
      //             tooltip: 'Cancelar',
      //             onPressed: () {
      //               setState(() {
      //                 this._isSearching = false;
      //               });
      //             },
      //           )
      //         : IconButton(
      //             icon: const Icon(Icons.search),
      //             tooltip: 'Buscar',
      //             onPressed: () {
      //               setState(() {
      //                 this._isSearching = true;
      //               });
      //             },
      //           ),
      //   ],
      // ),
      drawer: DrawerOptions(),
      body: TextComposer(),
    );
  }
}
