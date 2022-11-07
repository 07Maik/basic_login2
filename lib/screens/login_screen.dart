import 'package:flutter/material.dart';

import '../widgets/custom_clippers_widget.dart';
import '../widgets/login_button_widget.dart';
import '../widgets/login_input_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [background(), form()],
        ),
      ),
    );
  }

  Widget background() {
    const textStyle = TextStyle(
        fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white);

    return Stack(
      children: [
        ClipPath(
          clipper: WaveClipperThin(),
          child: Container(
            height: 300,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0x44ff3a5a), Color(0x44fe494d)])),
          ),
        ),
        ClipPath(
          clipper: WaveClipperBroad(),
          child: Container(
            height: 300,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0x22ff3a5a), Color(0x22fe494d)])),
          ),
        ),
        ClipPath(
          clipper: WaveClipperMain(),
          child: Container(
            padding: const EdgeInsets.only(top: 40),
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffff3a5a), Color(0xfffe494d)])),
            child: Column(
              children: const [
                Icon(Icons.fastfood, size: 60, color: Colors.white),
                SizedBox(height: 20),
                Text('Taste Me', style: textStyle)
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget form() {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Form(
          child: Column(
        children: const [
          LoginInput(hintText: 'Email', icon: Icons.email),
          SizedBox(height: 30.0),
          LoginInput(hintText: 'Password', icon: Icons.lock),
          SizedBox(height: 30.0),
          LoginButton()
        ],
      )),
    );
  }
}
