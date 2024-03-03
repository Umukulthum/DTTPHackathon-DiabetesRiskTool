import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/components/home_button.dart';
import 'package:firstapp/pages/profile_page.dart';
import 'package:firstapp/pages/quiz_page.dart';
import 'package:firstapp/pages/screen_time.dart';
import 'package:firstapp/pages/settings_page.dart';
import 'package:firstapp/pages/waist_circumference.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    ProfilePage(),
    SettingsPage(),
    QuizPage()
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
          MyHomeButton(
              onTap: () {
                // Navigate to the next page when the button is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          UnderConstruction()), // Replace NextPage() with your actual next page widget
                );
              },
              name: 'Daily Log'),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: MyHomeButton(
                    onTap: () {
                      // Navigate to the next page when the button is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                UnderConstruction()), // Replace NextPage() with your actual next page widget
                      );
                    },
                    name: 'Fitness'),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: MyHomeButton(
                    onTap: () {
                      // Navigate to the next page when the button is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                UnderConstruction()), // Replace NextPage() with your actual next page widget
                      );
                    },
                    name: 'Screen time'),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: MyHomeButton(
                    onTap: () {
                      // Navigate to the next page when the button is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                UnderConstruction()), // Replace NextPage() with your actual next page widget
                      );
                    },
                    name: 'Meals'),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: MyHomeButton(
                    onTap: () {
                      // Navigate to the next page when the button is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                UnderConstruction()), // Replace NextPage() with your actual next page widget
                      );
                    },
                    name: 'Affirmations'),
              ),
            ],
          ),
          const SizedBox(height: 30),
          // Image
          Image.asset(
            'lib/images/winter.png',
          ),
          const SizedBox(height: 20),
          MyHomeButton(
              onTap: () {
                // Navigate to the next page when the button is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          UnderConstruction()), // Replace NextPage() with your actual next page widget
                );
              },
              name: 'Your best day to date'),
          const SizedBox(height: 50),
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
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.work,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    label: 'Quiz',
                  ),
                ],
                backgroundColor: Colors.yellow,
                currentIndex: _selectedIndex,
                selectedItemColor: Color.fromARGB(255, 0, 0, 0),
                onTap: (index) {
                  NavigateTo(index);
                  if (index == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  } else if (index == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage()),
                    );
                  } else if (index == 3) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuizPage()),
                    );
                  } else if (index == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
