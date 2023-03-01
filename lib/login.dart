import 'package:authentest_208/regis.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("login"),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          TextFormField(
            controller: _emailController,
             validator: (value) {
                if (value!.isEmpty) {
               return 'enter your email';
                }
                return null;
              },
            
            decoration: InputDecoration(labelText: "Email"),
           
          ),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: "Password"),
            validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter your password!!!!!';
                }
                return null;
              },
          ),
          ElevatedButton(onPressed: () {
            print("success");
          }, child: const Text("login")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => regispage(),
                    ));
              },
              
              
              child: const Text("Register"))
        ],
      )),
    );
  }
}
