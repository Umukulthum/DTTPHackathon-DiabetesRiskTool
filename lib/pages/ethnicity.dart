import 'package:firstapp/components/home_button.dart';
import 'package:firstapp/pages/blood_pressure_pills.dart';
import 'package:firstapp/pages/home_page.dart';
import 'package:firstapp/pages/score_page.dart';
import 'package:flutter/material.dart';

class Ethnicity extends StatefulWidget {
  const Ethnicity({Key? key}) : super(key: key);

  @override
  State<Ethnicity> createState() => _EthnicityState();
}

class _EthnicityState extends State<Ethnicity> {
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
                  "What best describes your ethnicity or race?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 20),
                Image.asset('lib/images/ethnicity.png'),
                const SizedBox(height: 20),
                //add three radio buttons
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RadioListTile(
                        title: const Text('White (Caucasian)'),
                        value: '0',
                        groupValue: _selectedAgeGroup,
                        onChanged: (value) {
                          setState(() {
                            _selectedAgeGroup = value as String?;
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('Aboriginal'),
                        value: '1',
                        groupValue: _selectedAgeGroup,
                        onChanged: (value) {
                          setState(() {
                            _selectedAgeGroup = value as String?;
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('Black(Afro-Carribean)'),
                        value: '2',
                        groupValue: _selectedAgeGroup,
                        onChanged: (value) {
                          setState(() {
                            _selectedAgeGroup = value as String?;
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('East Asian'),
                        value: '3',
                        groupValue: _selectedAgeGroup,
                        onChanged: (value) {
                          setState(() {
                            _selectedAgeGroup = value as String?;
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('South Asian'),
                        value: '4',
                        groupValue: _selectedAgeGroup,
                        onChanged: (value) {
                          setState(() {
                            _selectedAgeGroup = value as String?;
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text('Other'),
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
                            builder: (context) => ScorePage(
                                score:
                                    85)), // Replace NextPage() with your actual next page widget
                      );
                    },
                    name: 'Caculate my score')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
