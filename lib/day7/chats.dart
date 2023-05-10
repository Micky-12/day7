import 'package:flutter/material.dart';
import 'package:project_2/day7/call.dart';
import 'package:project_2/day7/message.dart';
import 'package:project_2/day7/message1.dart';
import 'package:project_2/day7/status.dart';
class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.people, color: Colors.white,),),
            Tab(text:("Chats")),
            Tab(text: ("Status"),),
            Tab(text: ("Calls"),)
          ],),
          actions: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Icon(Icons.camera_alt_outlined,size: 33,),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Icon(Icons.search, size: 33,),
                ),
              ],
            ),
            PopupMenuButton(itemBuilder: (context) =>[
              const PopupMenuItem(
                  child: ListTile(
                    title: Text("New group"),
                  )),
            const PopupMenuItem(
                child: ListTile(
                  title: Text("New broadcast"),
                )),
            const PopupMenuItem(
                child: ListTile(
                  title: Text(("Linked devices")),
                )),
            const PopupMenuItem(
                child: ListTile(
                  title: Text("Starred messages"),
                )),
            const PopupMenuItem(
                child: ListTile(
                  title: Text("Payments")
                )),
            const PopupMenuItem(
                child: ListTile(
                  title: Text("Settings"),
                )),
              PopupMenuItem(
                  child: ListTile(
                    onTap:() {
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => const Message(),));
                    },
                    title: const Text("Text"),
                  )),
              PopupMenuItem(
                  child: ListTile(
                    onTap:() {
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => const Message_1(),));
                    },
                    title: const Text("Text in Group"),
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
                    onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(
                              builder: (context) => const Call(),));
                    },
                    title: const Text("Call"),
                  )),
            ],)
          ],
        ),

        ),

    );
  }
}
