import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  State<Forms> createState() => _FormsState();

}

class _FormsState extends State<Forms> {
  var tnameController=TextEditingController();
  var tdescController=TextEditingController();

  var name='', desc='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TODO",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
      body: Column(
        children: [
            Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Try out your Smartness",
                style: TextStyle(
                    color: Colors.cyan[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
          ),
           Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: tnameController,
              decoration: const InputDecoration(
              label: Text("Task Name"),
              border: OutlineInputBorder()
            ),),
          ),
           Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: tdescController,
              decoration: const InputDecoration(
              label: Text("Task Description"),
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(vertical: 100)
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
                height: 50,
                width: 10000,
                child: ElevatedButton(onPressed: () {
                  name=tnameController.text;
                  desc=tdescController.text;

                  if(name.isEmpty)
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Enter the Task Name")));
                    }
                  else if(desc.isEmpty)
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Type more on Your Plans")));
                    }

                },
                    child: const Text("SAVE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    ))),
          )
        ],
      ),
    );
  }
}
