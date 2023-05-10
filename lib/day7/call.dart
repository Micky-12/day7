import 'package:flutter/material.dart';
import 'package:project_2/day7/chats.dart';
import 'package:project_2/day7/status.dart';
class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        actions: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Icon(Icons.camera_alt_outlined, size: 33,),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Icon(Icons.search, size: 33,),
              )
            ],
          ),
          PopupMenuButton(itemBuilder: (context) => [
            const PopupMenuItem(
                child: ListTile(
                  title: Text("Clear call log"),
                )),
            const PopupMenuItem(child: ListTile(
              title: Text("Settings"),
            )),
            PopupMenuItem(
                child: ListTile(
                  onTap:() {
                    Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => const Status(),));
                  },
                  title: const Text("Status"),
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
          ],)
        ],
      ),
    );
  }
}
