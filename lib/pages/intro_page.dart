import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shushitup/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background color of the GettingStartedPage
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      // backgroundColor: Colors.red[400],
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 30),

            // Shop name
            Text(
              "SHUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20,),

            // Icon
            Padding(
              padding: const EdgeInsets.all(50),
              child: Image.asset('assets/sushi-4.png'),
            ),
            const SizedBox(height: 20,),

            // Title
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20,),

            // Subtitle
            Text(
              "Feel the taste of the most popular Japanese food from anywhere and anytime",
              style: TextStyle(
                color: Colors.grey[300],
                height: 2,
              ),
            ),
            const SizedBox(height: 20,),

            // GetStarted Button
            MyButton(text: "Get Started"),

          ],
        ),
      ),
    );
  }
}
