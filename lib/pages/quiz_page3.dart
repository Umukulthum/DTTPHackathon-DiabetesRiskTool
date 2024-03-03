import 'package:firstapp/components/home_button.dart';
import 'package:firstapp/pages/score_page.dart';
import 'package:flutter/material.dart';

class QuizPage3 extends StatefulWidget {
  const QuizPage3({super.key});

  @override
  State<QuizPage3> createState() => _QuizPage3State();
}

class _QuizPage3State extends State<QuizPage3> {
  String? _selectedAgeGroup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "What sex were you assigned at birth?",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 40),
          Image.asset('lib/images/winter.png'),
          const SizedBox(height: 30),
          //add three radio buttons
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RadioListTile(
                  title: const Text('Male'),
                  value: 'Male',
                  groupValue: _selectedAgeGroup,
                  onChanged: (value) {
                    setState(() {
                      _selectedAgeGroup = value as String?;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Female'),
                  value: 'Female',
                  groupValue: _selectedAgeGroup,
                  onChanged: (value) {
                    setState(() {
                      _selectedAgeGroup = value as String?;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Other'),
                  value: 'Other',
                  groupValue: _selectedAgeGroup,
                  onChanged: (value) {
                    setState(() {
                      _selectedAgeGroup = value as String?;
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          MyHomeButton(
              onTap: () {
                // Navigate to the next page when the button is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScorePage(score: 56),
                  ),
                );
              },
              name: "Let's check our score")
        ],
      ),
    );
  }
}
