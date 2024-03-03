import 'package:firstapp/components/home_button.dart';
import 'package:firstapp/pages/blood_pressure_pills.dart';
import 'package:firstapp/pages/high_school_education.dart';
import 'package:firstapp/pages/home_page.dart';
import 'package:flutter/material.dart';

class BloodRelative extends StatefulWidget {
  const BloodRelative({Key? key}) : super(key: key);

  @override
  State<BloodRelative> createState() => _BloodRelativeState();
}

class _BloodRelativeState extends State<BloodRelative> {
  String? _selectedAgeGroup;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Have any of your blood relatives ever been diagnosed with diabetes?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 20),
                Image.asset('lib/images/relatives.png'),
                const SizedBox(height: 20),
                //add three radio buttons
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RadioListTile(
                        title: const Text('Mother'),
                        value: '0',
                        groupValue: _selectedAgeGroup,
                        onChanged: (value) {
                          setState(() {
                            _selectedAgeGroup = value as String?;
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('Father'),
                        value: '1',
                        groupValue: _selectedAgeGroup,
                        onChanged: (value) {
                          setState(() {
                            _selectedAgeGroup = value as String?;
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('Brother(s)/Sister(s)'),
                        value: '2',
                        groupValue: _selectedAgeGroup,
                        onChanged: (value) {
                          setState(() {
                            _selectedAgeGroup = value as String?;
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('Children'),
                        value: '3',
                        groupValue: _selectedAgeGroup,
                        onChanged: (value) {
                          setState(() {
                            _selectedAgeGroup = value as String?;
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('No'),
                        value: '4',
                        groupValue: _selectedAgeGroup,
                        onChanged: (value) {
                          setState(() {
                            _selectedAgeGroup = value as String?;
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('I don\'t know'),
                        value: '5',
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
                                HighSchool()), // Replace NextPage() with your actual next page widget
                      );
                    },
                    name: 'Next Question')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
