import 'package:flutter/material.dart';
import 'theme.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            padding: EdgeInsets.all(20),
            child: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/document_logo.png",
                        height: 40,
                        width: 40,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                      ),
                      Text(
                        "Scanner App",
                        style: text,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 80),
                  ),
                  Text(
                    "Login",
                    style: title,
                  ),
                  // Container(
                  //   padding: const EdgeInsets.all(10),
                  //   child: TextField(
                  //     controller: passwordController,
                  //     decoration: const InputDecoration(
                  //       border: ,
                  //       labelText: 'Password',
                  //     ),
                  //   ),
                  // ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10,20,10,10),
                    child: TextFormField(
                      cursorColor: Color(0x1a34395E),
                      controller: nameController,
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: 'email',
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: Color(0x1a34395E),
                    child: TextFormField(
                      controller: passwordController,
                      autofocus: false,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'password',
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                  )
                ]))));
  }
}
