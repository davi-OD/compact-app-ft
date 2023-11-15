import 'package:compact/Screens/profile_screen.dart';
import 'package:compact/Screens/settings_screen.dart';
import 'package:compact/main.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final List _pages = [HomeSreen(), ProfileScreen(), SettingScreen()];

  int _selectedIndex = 0;

  void _navagteBottomBar(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('1st screen')),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Go To Second Screen"),
      //     onPressed: () {
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(
      //       //     builder: (context) => SecondScreen(),
      //       //   ),
      //       // );
      //       Navigator.pushNamed(context, '/secondscreen');
      //     },
      //   ),
      // ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(children: [
          DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 48,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('H O M E'),
            onTap: () {
              Navigator.pop(context);
              // go to home
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('S E T T I N G S'),
            onTap: () {
              Navigator.pop(context);
              // go to settings
              Navigator.pushNamed(context, '/settings');
            },
          )
        ]),
      ),
      body: _pages[2],
      bottomNavigationBar: BottomNavigationBar(items: [
        //home
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        // profile
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        // settings
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
      ]),
    );
  }
}
