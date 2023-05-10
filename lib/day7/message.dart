import 'package:flutter/material.dart';
import 'package:project_2/day7/chats.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Name",
        style: TextStyle(fontSize: 20),),

        actions: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.video_camera_back_rounded, size: 33,),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.call, size: 33,),
              )
            ],
          ),
          PopupMenuButton(itemBuilder: (context) => [
            const PopupMenuItem(child: ListTile(
              title: Text("View"),
            )),
            const PopupMenuItem(child: ListTile(
              title: Text("Media, links and docs"),
            ),
            ),
            const PopupMenuItem(child: ListTile(
              title: Text("Search"),
            ),
            ),
            const PopupMenuItem(child: ListTile(
              title: Text("Mute notifications"),
            ),
            ),
            const PopupMenuItem(child: ListTile(
              title: Text("Disappearing messages"),
            ),
            ),
            const PopupMenuItem(child: ListTile(
              title: Text("Wallpaper"),
            ),
            ),
            const PopupMenuItem(child: ListTile(
              title: Text("More"),
            ),
            ),
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
        ],
      ),
    );
  }
}
