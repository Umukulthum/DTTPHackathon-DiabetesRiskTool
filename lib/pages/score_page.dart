import 'package:firstapp/components/home_button.dart';
import 'package:firstapp/pages/home_page.dart';
import 'package:flutter/material.dart';

class ScorePage extends StatelessWidget {
  final int score;
  final double radius;

  ScorePage(
      {required this.score, this.radius = 100.0}); // Corrected constructor name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Center(
            child: Text(
              "Score",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
          ),
          // Circular widget with score
          const SizedBox(height: 50),
          Container(
            width: radius * 2,
            height: radius * 2,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue, // Change color as needed
            ),
            child: Center(
              child: Text(
                score.toString(),
                style: const TextStyle(
                  color: Colors.white, // Change text color as needed
                  fontSize: 50.0, // Change font size as needed
                  fontWeight: FontWeight.bold, // Change font weight as needed
                ),
              ),
            ),
          ),

          // Button to go back to the home page
          const SizedBox(height: 50),
          MyHomeButton(
            onTap: () {
              // Navigate to the home page when the button is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            name: "Show Recommendations",
          )
        ],
      ),
    );
  }
}
