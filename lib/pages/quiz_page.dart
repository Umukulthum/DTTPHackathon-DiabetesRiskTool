import 'package:firstapp/components/home_button.dart';
import 'package:firstapp/pages/quix_page2.dart'; // Import the next page file
import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                'A first of its kind app to calculate your type 2 risk diabetes!',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Image.asset('lib/images/winter.png'),
          const SizedBox(height: 50),
          MyHomeButton(
            onTap: () {
              // Navigate to the next page when the button is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        QuizPage2()), // Replace NextPage() with your actual next page widget
              );
            },
            name: "Let's start",
          ),
        ],
      ),
    );
  }
}
