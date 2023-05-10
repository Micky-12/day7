import 'package:flutter/material.dart';
import 'package:project_2/day2/loginpage.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SWIGGY",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            elevation: 20,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            color: Colors.grey[200],
            itemBuilder: (context) => [
            PopupMenuItem(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.home, color: Colors.grey.shade600,),
                      title: const Text("Home"),),
                    const Divider(),
                  ],
                )),
             PopupMenuItem(
                 child: Column(
                   children: [
                     ListTile(
                       leading: Icon(Icons.chat, color: Colors.grey.shade600,),
                       title: const Text("Chat"),
                     ),
                     const Divider(),
                   ],
                 )),
            PopupMenuItem(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.bar_chart, color: Colors.grey.shade600,),
                      title: const Text("Statistics"),
                    ),
                    const Divider(),
                  ],
                )),
           PopupMenuItem(
               child: Column(
                 children: [
                   ListTile(
                     leading: Icon(Icons.exit_to_app, color: Colors.grey.shade600,),
                     title: const Text("Exit"),),
                   const Divider()
                 ],
               ))

          ],)
        ],
      ),


    );
  }
}

