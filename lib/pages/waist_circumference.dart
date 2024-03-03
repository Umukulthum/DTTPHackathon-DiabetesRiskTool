import 'package:firstapp/components/home_button.dart';
import 'package:firstapp/pages/score_page.dart';
import 'package:firstapp/pages/weight_question.dart';
import 'package:flutter/material.dart';

class WaistCircumference extends StatefulWidget {
  const WaistCircumference({Key? key}) : super(key: key);

  @override
  State<WaistCircumference> createState() => _WaistCircumferenceState();
}

class _WaistCircumferenceState extends State<WaistCircumference> {
  TextEditingController cmController = TextEditingController();
  TextEditingController inchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Enter your waist circumference:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 40),
            Image.asset('lib/images/waist.png'),
            const SizedBox(height: 30),
            // Add two input fields for waist circumference
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: TextField(
                      controller: cmController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'CM',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Flexible(
                    child: TextField(
                      controller: inchController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Inches',
                        border: OutlineInputBorder(),
                      ),
                    ),
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
                    builder: (context) => UserWeight(),
                  ),
                );
              },
              name: "Next",
            )
          ],
        ),
      ),
    );
  }
}
