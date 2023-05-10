import 'package:flutter/material.dart';
import 'package:project_2/day7/chats.dart';

class Message_1 extends StatefulWidget {
  const Message_1({Key? key}) : super(key: key);

  @override
  State<Message_1> createState() => _Message_1State();
}

class _Message_1State extends State<Message_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("GroupName"),
          actions: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Icon(Icons.add_call, size: 33),
            ),
            PopupMenuButton(itemBuilder: (context) => [
              const PopupMenuItem(child: ListTile(
                title: Text("Group info"),
              ), ),
              const PopupMenuItem(child: ListTile(
                title: Text("Group media"),
              ),),
              const PopupMenuItem(child: ListTile(
                title: Text("Search"),
              ),),
              const PopupMenuItem(child: ListTile(
                title: Text("Mute notifications"),
              ),),
              const PopupMenuItem(child: ListTile(
                title: Text("Wallpaper"),
              ),),
              const PopupMenuItem(child: ListTile(
                title: Text("More"),
              ),),
              PopupMenuItem(
                  child: ListTile(
                    onTap:() {
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => const Chats(),));
                    },
                    title: const Text("Chat"),
                  )),
            ],)

      ],),
    );
  }
}
