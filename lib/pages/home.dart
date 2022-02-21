import '../theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();  
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  
void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

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
                padding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: const Color(0x1a34395E),
                    borderRadius: BorderRadius.circular(50)),
                child: const TextField(
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
                    padding: const EdgeInsets.all(10),
                  ),
                  Text(
                    "You don't have any documents!",
                    style: text,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
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
            backgroundColor: const Color(0xffF4F6F9),
            unselectedItemColor: Color(0xFFB7BEF5),
          // currentIndex: _currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.folder_sharp),
              label: 'Document',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              label: 'Scan',              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
          currentIndex: _currentIndex,
        selectedItemColor: purple,
        onTap: _onItemTapped,
      ),
    );
  }
}
