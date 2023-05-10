import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var unameController = TextEditingController();
  var passwordController = TextEditingController();

  var uname='';
  var password='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SWIGGY',
        style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(200),
              child: SizedBox(
                  width: 200,
                  child: Image.network(
                      'https://cdn-images-1.medium.com/v2/resize:fit:1200/1*v5SYqjYEdQMPIwNduRrnCw.png')),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                  controller: unameController,
                  decoration: InputDecoration(
                label: Text('Username'),
                border: OutlineInputBorder()
              )),
            ),
             Padding(
              padding: EdgeInsets.all(25.0),
              child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                label: Text("Password"),
                  border: OutlineInputBorder() ),obscureText: true),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                width: 10000,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      uname=unameController.text;
                      password=passwordController.text;

                      if(uname.isEmpty)
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Enter your Username")));
                      }
                      else if(password.isEmpty)
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Enter your Password")));
                      }
                    });
                  },
                      child: const Text('LOGIN',
                      style: TextStyle(color: Colors.white, fontSize: 23,
                      fontWeight: FontWeight.bold),))),
            )
          ],
        ),
      ]),
    );
  }
}
