import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        text: 'Home Screen',
        fontSize: 26,
        fontColor: Colors.white,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Signed In As',
                style: GoogleFonts.quicksand(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                user!.email.toString(),
                style: GoogleFonts.quicksand(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Sign Out',
                onTap: () {
                  FirebaseAuth.instance.signOut();
                },
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
