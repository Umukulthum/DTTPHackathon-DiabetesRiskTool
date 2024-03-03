import 'package:firstapp/components/home_button.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Settings'),
        ),
        backgroundColor: Colors.yellow,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(15.0),
                color: const Color.fromARGB(255, 240, 239, 239),
                width: double.infinity,
                child: Column(
                  children: [
                    Row(children: [
                      const Icon(
                        Icons.person_outlined,
                        size: 35.0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'My Profile',
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 1.5),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios)
                    ]),
                    const SizedBox(height: 8),
                    Row(children: [
                      const Icon(
                        Icons.analytics_outlined,
                        size: 33.0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'My Reports',
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 1.5),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios)
                    ]),
                    const SizedBox(height: 8),
                    Row(children: [
                      const Icon(
                        Icons.medication_outlined,
                        size: 33.0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'My Medication',
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 1.5),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios)
                    ]),
                    const SizedBox(height: 8),
                    Row(children: [
                      const Icon(
                        Icons.apple_outlined,
                        size: 33.0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'My Diet',
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 1.5),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios)
                    ]),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(15.0),
                color: const Color.fromARGB(255, 240, 239, 239),
                width: double.infinity,
                child: Column(
                  children: [
                    Row(children: [
                      const Icon(
                        Icons.notification_add_outlined,
                        size: 35.0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Notification',
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 1.5),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios)
                    ]),
                    const SizedBox(height: 8),
                    Row(children: [
                      const Icon(
                        Icons.settings_outlined,
                        size: 33.0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Settings',
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 1.5),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios)
                    ]),
                    const SizedBox(height: 8),
                    Row(children: [
                      const Icon(
                        Icons.help_outline_rounded,
                        size: 33.0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Help',
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 1.5),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios)
                    ]),
                    const SizedBox(height: 8),
                    Row(children: [
                      const Icon(
                        Icons.badge_outlined,
                        size: 33.0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Account',
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 1.5),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios)
                    ]),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(15.0),
                color: const Color.fromARGB(255, 240, 239, 239),
                width: double.infinity,
                child: Column(
                  children: [
                    Row(children: [
                      const Icon(
                        Icons.link_outlined,
                        size: 35.0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Send App Link',
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 1.5),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios)
                    ]),
                    const SizedBox(height: 8),
                    Row(children: [
                      const Icon(
                        Icons.privacy_tip_outlined,
                        size: 33.0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Privacy Policy',
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 1.5),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios)
                    ]),
                    const SizedBox(height: 8),
                    Row(children: [
                      const Icon(
                        Icons.code_outlined,
                        size: 33.0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Terms of use',
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 1.5),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios)
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
