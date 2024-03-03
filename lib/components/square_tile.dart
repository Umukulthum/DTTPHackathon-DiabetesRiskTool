import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 223, 222, 222)),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      height: 100,
      child: Image.asset(imagePath),
    );
  }
}
