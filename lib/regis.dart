import 'package:authentest_208/auth_service.dart';
import 'package:flutter/material.dart';


//import 'package:lab8/services/auth_service.dart';


class regispage extends StatefulWidget {
  const regispage({super.key});

  @override
  State<regispage> createState() => _loginpageState();
}
final _formkey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController telephone = TextEditingController();
  TextEditingController usertype = TextEditingController();
  String grouptype = "";

class _loginpageState extends State<regispage> {
  @override
  Widget build(BuildContext context) {
    var type;
    var teacher;
    var onChanged;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          TextFormField(
            controller: email,
            decoration: InputDecoration(labelText:"Email"),
          ),
          TextFormField(
            controller: password,
            decoration: const InputDecoration(labelText:"Password" ),
            obscureText: true,
          ),
           TextFormField(
            controller: username,
            decoration: InputDecoration(labelText:"Username"),
          ),
           TextFormField(
            controller: telephone,
            decoration: InputDecoration(labelText:"Telephone"),
          ),
           RadioListTile(
              title: Text("อาจารย์"),
              controlAffinity: ListTileControlAffinity.platform,
              value: 'Sex1',
              groupValue: grouptype,
              onChanged: (value) {
                setState(() {
                 grouptype = value!;
                });
                print(grouptype);
              },
            ),
             RadioListTile(
              title: Text("เจ้าหน้าที่"),
              controlAffinity: ListTileControlAffinity.platform,
              value: 'Sex2',
              groupValue: grouptype,
              onChanged: (value) {
                setState(() {
                  grouptype = value!;
                });
                print(grouptype);
              },
            ),
             RadioListTile(
              title: Text("นิสิต"),
              controlAffinity: ListTileControlAffinity.platform,
              value: 'Sex3',
              groupValue: grouptype,
              onChanged: (value) {
                setState(() {
                  grouptype = value!;
                });
                print(grouptype);
              },
            ),
         
          
          ElevatedButton(onPressed: (() {AuthService.signup(email.text, password.text).then((value) {
            print("Succes");
            Navigator.pop(context);

          });
          
          }), child: const Text("Register"))
        ],
      )),
    );
  }
}



