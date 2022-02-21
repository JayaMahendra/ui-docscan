import 'theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: SafeArea(
                child: SingleChildScrollView(
                    child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello, Welcome Back', style: desc),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Your Document \nFiles',
                  style: title,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Color(0x1a34395E),
                    borderRadius: BorderRadius.circular(50)),
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Search data",
                      hintStyle: TextStyle(fontSize: 12)),
                ),
              ),
              Image.asset("assets/images/undraw_home.png"),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                  ),
                  Text(
                    "You don't have any documents!",
                    style: text,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                  ),
                  Center(
                      child: Text(
                    "Scan now to save your documents and storage efficiency",
                    style: desc,
                    textAlign: TextAlign.center,
                  ))
                ],
              ),
            ],
          ),
        )))),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30,
          backgroundColor: Colors.white30,
          fixedColor: Color(0xFF6777EF),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.folder_sharp),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
