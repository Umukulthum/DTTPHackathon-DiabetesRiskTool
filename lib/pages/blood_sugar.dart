import 'package:firstapp/components/home_button.dart';
import 'package:firstapp/pages/given_birth.dart';
import 'package:firstapp/pages/home_page.dart';
import 'package:flutter/material.dart';

class BloodSugar extends StatefulWidget {
  const BloodSugar({Key? key}) : super(key: key);

  @override
  State<BloodSugar> createState() => _BloodSugarState();
}

class _BloodSugarState extends State<BloodSugar> {
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
              const Text(
                "Have you ever been found to have high blood sugar?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 18),
              Image.asset('lib/images/sugar.png'),
              const SizedBox(height: 20),
              //add three radio buttons
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RadioListTile(
                      title: const Text('From a blood test'),
                      value: '0',
                      groupValue: _selectedAgeGroup,
                      onChanged: (value) {
                        setState(() {
                          _selectedAgeGroup = value as String?;
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text('During an illness'),
                      value: '1',
                      groupValue: _selectedAgeGroup,
                      onChanged: (value) {
                        setState(() {
                          _selectedAgeGroup = value as String?;
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text('During pregnancy'),
                      value: '2',
                      groupValue: _selectedAgeGroup,
                      onChanged: (value) {
                        setState(() {
                          _selectedAgeGroup = value as String?;
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text('No'),
                      value: '3',
                      groupValue: _selectedAgeGroup,
                      onChanged: (value) {
                        setState(() {
                          _selectedAgeGroup = value as String?;
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text('I don\'t know'),
                      value: '4',
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
                              GivenBirth()), // Replace NextPage() with your actual next page widget
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
