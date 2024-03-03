import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/components/home_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    Text('Search Page'),
    Text('Profile Page'),
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser;

  int _selectedIndex = 0;

  void SignUserOut() {
    FirebaseAuth.instance.signOut();
  }

  void NavigateTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Welcome Hana!',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(onPressed: SignUserOut, icon: Icon(Icons.logout)),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 22),
          MyHomeButton(onTap: () {}, name: 'Daily Log'),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: MyHomeButton(onTap: () {}, name: 'Fitness'),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: MyHomeButton(onTap: () {}, name: 'Screen time'),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: MyHomeButton(onTap: () {}, name: 'Meals'),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: MyHomeButton(onTap: () {}, name: 'Affirmations'),
              ),
            ],
          ),
          const SizedBox(height: 30),
          // Image
          Image.asset(
            'lib/images/winter.png',
          ),
          const SizedBox(height: 30),
          MyHomeButton(onTap: () {}, name: 'Your best day to date'),
          const SizedBox(height: 30),
          // Navigation bar
          Container(
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  label: 'Settings',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Color.fromARGB(255, 0, 0, 0),
              onTap: NavigateTo,
              backgroundColor: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
