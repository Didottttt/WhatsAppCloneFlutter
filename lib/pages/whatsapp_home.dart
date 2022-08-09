import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:waclone/pages/calls_screen.dart';
import 'package:waclone/pages/camera_screen.dart';
import 'package:waclone/pages/chat_screen.dart';
import 'package:waclone/pages/status_screen.dart';

class WhatsappHome extends StatefulWidget {
  const WhatsappHome({super.key});

  @override
  State<WhatsappHome> createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome> with SingleTickerProviderStateMixin{
  late TabController _tabController;
void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
          backgroundColor: Color.fromARGB(255, 12, 106, 65),
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
           tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS"),
            new Tab(text: "PANGGILAN")
          ],
        ),
         actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          new Icon(Icons.more_vert)
        ],
       ),
        body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallsScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => ("Open Charts"),
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}