import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          banner(),
        ],
      ),
    );
  }

  Widget banner() {
    return Stack(
      children: [
        ClipPath(
          clipper: WaveClipper2(),
          child: Container(
            // width: 400,
            height: 300,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Color(0x44ff3a5a), Color(0x44fe494d)])),
          ),
        ),
        ClipPath(
          clipper: WaveClipper1(),
          child: Container(
            // width: 400,
            height: 300,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffff3a5a), Color(0xfffe494d)])),
          ),
        ),
      ],
    );
  }

  form() {}
}

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    // path.quadraticBezierTo(size, y1, x2, y2)
    path.cubicTo(
      size.width * 0.4,
      size.height - 100,
      size.width * 0.65,
      size.height,
      size.width,
      size.height - 20,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    // path.quadraticBezierTo(size, y1, x2, y2)
    path.cubicTo(
      size.width * 0.25,
      size.height - 100,
      
      size.width * 0.70,
      size.height + 20,

      size.width,
      size.height - 2,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class WaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    // path.quadraticBezierTo(size, y1, x2, y2)
    path.cubicTo(
      size.width * 0.25,
      size.height - 100,
      
      size.width * 0.70,
      size.height + 20,

      size.width,
      size.height - 2,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
