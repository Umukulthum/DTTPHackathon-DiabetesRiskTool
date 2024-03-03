import 'package:firstapp/components/home_button.dart';
import 'package:firstapp/pages/blood_pressure_pills.dart';
import 'package:firstapp/pages/ethnicity.dart';
import 'package:firstapp/pages/home_page.dart';
import 'package:flutter/material.dart';

class HighSchool extends StatefulWidget {
  const HighSchool({Key? key}) : super(key: key);

  @override
  State<HighSchool> createState() => _HighSchoolState();
}

class _HighSchoolState extends State<HighSchool> {
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
                "What's the highest level of education you have completed?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 40),
              Image.asset('lib/images/education.png'),
              const SizedBox(height: 30),
              //add three radio buttons
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RadioListTile(
                      title: const Text('Some high school or less'),
                      value: '0',
                      groupValue: _selectedAgeGroup,
                      onChanged: (value) {
                        setState(() {
                          _selectedAgeGroup = value as String?;
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text('High School'),
                      value: '1',
                      groupValue: _selectedAgeGroup,
                      onChanged: (value) {
                        setState(() {
                          _selectedAgeGroup = value as String?;
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text('Some college or university'),
                      value: '2',
                      groupValue: _selectedAgeGroup,
                      onChanged: (value) {
                        setState(() {
                          _selectedAgeGroup = value as String?;
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text('College/University degree'),
                      value: '3',
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
                              Ethnicity()), // Replace NextPage() with your actual next page widget
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
