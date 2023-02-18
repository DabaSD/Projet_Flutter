import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:projet_flutter/Modules.dart';
import 'package:http/http.dart' as http;

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final identifiant = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
            padding: const EdgeInsets.only(left: 35, top: 50),
            child: const Text(
              "DoliMobile",
              style: TextStyle(color: Colors.white, fontSize: 33),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  right: 35,
                  left: 35,
                  top: MediaQuery.of(context).size.height * 0.5),
              child: Column(children: [
                TextField(
                  controller: identifiant,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    prefixIcon: const Icon(Icons.person_outline),
                    hintText: 'Identifiant',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    prefixIcon: const Icon(Icons.password),
                    hintText: 'Mot de passe',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Se connecter',
                      style: TextStyle(
                        color: Color(0xff4c505b),
                        fontSize: 27,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: const Color(0xff4c505b),
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () async {
                          var response = await connexion(identifiant.text, password.text);
                            if(response.toString()=='false'){
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Mot de passe ou Identifiant incorrect"))
                              );
                            }
                            
                            if(response.toString() == 'true'){
                            // ignore: use_build_context_synchronously
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const MyModules()));
                            }
                        },
                        icon: const Icon(Icons.arrow_forward),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                )
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}

Future<Object> connexion(String login, String password) async {
  var session = SessionManager();
  const api = "https://dkentertainment.with6.dolicloud.com/api/index.php/login";
  http.Response response=await http.Client(). post(Uri.parse(api),
  body: ({'login':login,'password':password}));
  final donne = json.decode(response.body);
  if(response.statusCode==200){
    session.set("isLogin", true);
    session.set("name", login);
    session.set("token", donne['success']['token']);
    return true;
  }

  if(response.statusCode == 403){
    return false;
  }

  await session.set("token", "");
  return false;
}