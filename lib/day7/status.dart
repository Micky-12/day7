import 'package:flutter/material.dart';
import 'package:project_2/day7/call.dart';
import 'package:project_2/day7/chats.dart';
class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("WhatsApp",),
          actions: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Icon(Icons.camera_alt_outlined, size: 33,),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Icon(Icons.search, size: 33),
                )
              ],
            ),
            PopupMenuButton(itemBuilder: (context) => [
              const PopupMenuItem(child: ListTile(
                title: Text("Status privacy"),
              )),
              const PopupMenuItem(child: ListTile(
                title: Text("Settings"),
              )),
              PopupMenuItem(
                  child: ListTile(
                    onTap:() {
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => const Chats(),));
                    },
                    title: const Text("Chat"),
                  )),
              PopupMenuItem(
                  child: ListTile(
                    onTap:() {
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => const Call(),));
                    },
                    title: const Text("Call"),
                  )),
            ],)
          ],),
    );
  }
}
