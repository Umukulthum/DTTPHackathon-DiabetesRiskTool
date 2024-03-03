import 'package:firstapp/components/home_button.dart';
import 'package:firstapp/pages/quiz_page3.dart';
import 'package:flutter/material.dart';

class QuizPage2 extends StatefulWidget {
  const QuizPage2({Key? key}) : super(key: key);

  @override
  State<QuizPage2> createState() => _QuizPage2State();
}

class _QuizPage2State extends State<QuizPage2> {
  String? _selectedAgeGroup;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Select your age group",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 20),
          Image.asset('lib/images/age_group.png'),
          const SizedBox(height: 20),
          //add three radio buttons
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RadioListTile(
                  title: const Text('0-16'),
                  value: '0-16',
                  groupValue: _selectedAgeGroup,
                  onChanged: (value) {
                    setState(() {
                      _selectedAgeGroup = value as String?;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('16-31'),
                  value: '16-31',
                  groupValue: _selectedAgeGroup,
                  onChanged: (value) {
                    setState(() {
                      _selectedAgeGroup = value as String?;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('32-45'),
                  value: '32-45',
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
                      builder: (context) =>
                          QuizPage3()), // Replace NextPage() with your actual next page widget
                );
              },
              name: 'Next Question')
        ],
      ),
    );
  }
}
