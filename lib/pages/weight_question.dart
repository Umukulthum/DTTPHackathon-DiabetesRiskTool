import 'package:firstapp/components/home_button.dart';
import 'package:firstapp/pages/physical_activity.dart';
import 'package:firstapp/pages/score_page.dart';
import 'package:flutter/material.dart';

class UserWeight extends StatefulWidget {
  const UserWeight({Key? key}) : super(key: key);

  @override
  State<UserWeight> createState() => _UserWeightState();
}

class _UserWeightState extends State<UserWeight> {
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
              "Enter your weight:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 40),
            Image.asset('lib/images/weight.png'),
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
                        labelText: 'kg',
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
                        labelText: 'lbs',
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
                    builder: (context) => PhysicalActive(),
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
