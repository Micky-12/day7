import 'package:flutter/material.dart';

import '../day2/loginpage.dart';
import '../day5/home_page.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final bool _checkbox=false;
  var fnameController = TextEditingController();
  var lnameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var cnpasswordController = TextEditingController();

  var fname = '',
      lname = '',
      email = '',
      password = '',
      cnpassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SWIGGY',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Join our Family',
                  style: TextStyle(
                      color: Colors.deepOrangeAccent, fontSize: 40),
                )),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(
                controller: fnameController,
                decoration: const InputDecoration(
                    label: Text('First Name'), border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(controller: lnameController,
                decoration: const InputDecoration(
                    label: Text('Last Name'),
                    border: OutlineInputBorder()
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    label: Text('Email'), border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                      label: Text('Password'), border: OutlineInputBorder()),
                  obscureText: true),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(
                  controller: cnpasswordController,
                  decoration: const InputDecoration(
                      label: Text('Confirm Password'),
                      border: OutlineInputBorder()),
                  obscureText: true),
            ),
            Row(
              children:  [
                Checkbox(value: _checkbox, onChanged: (value)
                {
                  setState(() {
                    _checkbox != _checkbox;
                  });
                }),
                const Text(
"By creating an account, you agree to our Conditions of Use and Privacy Notice",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fname=fnameController.text;
                        lname=lnameController.text;
                        email=emailController.text;
                        password=passwordController.text;
                        cnpassword=cnpasswordController.text;

                        if(fname.isEmpty)
                          {
                            ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Enter your First Name")));
                          }
                        else if(lname.isEmpty)
                          {
                            ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Enter your Last Name")));
                          }
                        else if(lname.isEmpty)
                        {
                          ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Enter your Last Name")));
                        }
                        else if(email.isEmpty)
                        {
                          ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Enter your Email")));
                        }
                        else if(password.isEmpty)
                        {
                          ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Enter your password")));
                        }
                        else if(cnpassword.isEmpty)
                        {
                          ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Confirm your password")));
                        }
                        else if(password!=cnpassword){
                          ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Make sure it's matching")));

                        }
                        else
                          {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => const Home(),));

                          }
                      });
                    },
                    child: const Text('SUBMIT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                        )),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                width: 10000,
                height: 50,
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>const LoginPage(),));
                },
                    child: const Text("I'M HERE ALREADY:)LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                      ),)),
              ),
            )
          ],
        )
      ]
      ),);
  }
}