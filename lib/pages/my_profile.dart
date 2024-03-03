import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Edit Profile',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
          margin: const EdgeInsets.fromLTRB(15.0, 70.0, 15.0, 30.0),
          padding: const EdgeInsets.all(15.0),
          color: const Color.fromARGB(255, 240, 239, 239),
          width: double.infinity,
          child: Column(
            children: [
              Row(children: [
                const Icon(
                  Icons.calendar_month_outlined,
                  size: 35.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Date of Birth',
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 1.5),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios)
              ]),
              const SizedBox(height: 4.0),
              Row(children: [
                const Icon(
                  Icons.female_outlined,
                  size: 35.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Gender',
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 1.5),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios)
              ]),
              const SizedBox(height: 4.0),
              Row(children: [
                const Icon(
                  Icons.info_outline,
                  size: 35.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Weight',
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 1.5),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios)
              ]),
              const SizedBox(height: 4.0),
              Row(children: [
                const Icon(
                  Icons.person_pin_outlined,
                  size: 35.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Height',
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 1.5),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios)
              ]),
              const SizedBox(height: 4.0),
              Row(children: [
                const Icon(
                  Icons.health_and_safety_outlined,
                  size: 35.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Diabetes type',
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 1.5),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios)
              ]),
              const SizedBox(height: 4.0),
              Row(children: [
                const Icon(
                  Icons.calendar_today_outlined,
                  size: 35.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Year of Diagnosis',
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 1.5),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios)
              ]),
              const SizedBox(height: 4.0),
              Row(children: [
                const Icon(
                  Icons.language_outlined,
                  size: 35.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Country',
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 1.5),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios)
              ]),
              const SizedBox(height: 4.0),
              Row(children: [
                const Icon(
                  Icons.analytics_outlined,
                  size: 35.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Reports',
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 1.5),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios)
              ]),
              const SizedBox(height: 4.0),
              Row(children: [
                const Icon(
                  Icons.file_copy_outlined,
                  size: 35.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Resources',
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 1.5),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios)
              ]),
            ],
          )),
    );
  }
}
