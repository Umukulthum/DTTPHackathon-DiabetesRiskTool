import 'package:firstapp/components/home_button.dart';
import 'package:firstapp/pages/blood_pressure_pills.dart';
import 'package:flutter/material.dart';

class BloodPressure extends StatefulWidget {
  const BloodPressure({Key? key}) : super(key: key);

  @override
  State<BloodPressure> createState() => _BloodPressureState();
}

class _BloodPressureState extends State<BloodPressure> {
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
                "Have you ever been told by a doctor that you have high blood pressure?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 40),
              Image.asset('lib/images/high_blood_pressure.png'),
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
                              BloodPressurePills()), // Replace NextPage() with your actual next page widget
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
