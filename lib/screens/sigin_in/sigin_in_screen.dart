import 'package:flutter/material.dart';

class SiginInScreen extends StatelessWidget {
  const SiginInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {

          },
          child: const Text(
            "navigate to Home Screen",
          ),
        ),
      ),
    );
  }
}
