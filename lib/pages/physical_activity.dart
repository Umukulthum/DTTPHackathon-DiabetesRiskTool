import 'package:firstapp/components/home_button.dart';
import 'package:firstapp/pages/fruits_page.dart';
import 'package:firstapp/pages/quiz_page3.dart';
import 'package:flutter/material.dart';

class PhysicalActive extends StatefulWidget {
  const PhysicalActive({Key? key}) : super(key: key);

  @override
  State<PhysicalActive> createState() => _PhysicalActiveState();
}

class _PhysicalActiveState extends State<PhysicalActive> {
  String? _selectedAgeGroup;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Do you usually do some physical activity for at least 30 minutes a day?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 40),
              Image.asset('lib/images/physical activity.png'),
              const SizedBox(height: 30),
              //add three radio buttons
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RadioListTile(
                      title: const Text('Yes'),
                      value: '0',
                      groupValue: _selectedAgeGroup,
                      onChanged: (value) {
                        setState(() {
                          _selectedAgeGroup = value as String?;
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text('No'),
                      value: '1',
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
                              NutritionPage()), // Replace NextPage() with your actual next page widget
                    );
                  },
                  name: 'Next Question')
            ],
          ),
        ),
      ),
    );
  }
}
