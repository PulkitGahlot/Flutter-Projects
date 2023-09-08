import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vsecure/bottom_sheet.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  void _openLoginWindow() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => const LoginBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 87, 227, 246),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Create a Flutter account!!',
              style: GoogleFonts.josefinSans(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            FlutterSocialButton(
              onTap: _openLoginWindow,
              buttonType: ButtonType.google,
            ),
            FlutterSocialButton(
              onTap: _openLoginWindow,
              buttonType: ButtonType.facebook,
            ),
            FlutterSocialButton(
              onTap: _openLoginWindow,
              buttonType: ButtonType.email,
            ),
            FlutterSocialButton(
              onTap: _openLoginWindow,
              buttonType: ButtonType.yahoo,
            ),
          ],
        ),
      ),
    );
  }
}
