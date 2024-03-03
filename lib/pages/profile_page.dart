import 'package:firstapp/components/home_button.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200.0),
                child: Image.asset(
                  'lib/images/profile.webp',
                  height: 200,
                ),
              ),
            ),
            const Text(
              'Jane Doe',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            _buildProfileDetail(title: 'Birthdate', detail: 'January 1, 1990'),
            _buildProfileDetail(title: 'Age', detail: '32 years'),
            _buildProfileDetail(title: 'Location', detail: 'New York, USA'),
            const SizedBox(height: 40),
            MyHomeButton(onTap: () {}, name: "Edit my profile")
          ],
        ),
      ),
    );
  }

  Widget _buildProfileDetail({required String title, required String detail}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            detail,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
