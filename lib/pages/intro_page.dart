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
            const SizedBox(height: 20),

            // SHOP NAME
            Text(
              "SHUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20,),

            // ICON
            Padding(
              padding: const EdgeInsets.all(50),
              child: Image.asset('assets/g3.gif', width: 500,),
              // child: Image.asset('assets/sushi-4.png'),
            ),
            const SizedBox(height: 10,),

            // TITLE
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 45,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20,),

            // SUBTITLE
            Text(
              "Feel the taste of the most popular Japanese food from anywhere and anytime",
              style: TextStyle(
                color: Colors.grey[300],
                height: 2,
              ),
            ),
            const SizedBox(height: 20,),

            // GETSTARTED BUTTON
            MyButton(
                text: "Get Started",
              onTap: () {
                  // Go to the Menu Page
                Navigator.pushNamed(context, '/menupage');
              },
            ),

          ],
        ),
      ),
    );
  }
}
