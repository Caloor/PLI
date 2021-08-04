import 'package:fitting_connexion/delayed_animation.dart';
import 'package:flutter/material.dart';
import 'package:fitting_connexion/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fitting_connexion/social_page.dart';

class WelcomePage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {

    return Scaffold(
    backgroundColor: Colors.white,
      body: SingleChildScrollView(
    child: Container(
    margin: EdgeInsets.symmetric(
      vertical: 60,
      horizontal: 30,
    ),
      child: Column(
        children: [
          Delayy(delay: 800, child: Container(
            height: 400,
            child: Image.asset('images/fittinglogo.png',),
          ),
          ),
          Delayy(delay: 1600, child: Container(

            margin: EdgeInsets.only(
              top: 190,
              bottom: 20,
            ),
            child: Text("Faire du shopping nous rapproche", style: GoogleFonts.poppins(
              color: Colors.grey, fontSize: 16,
            ),),
          ),
          ),
          Delayy(delay: 1900, child: Container(
            width: double.infinity,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: magic_color,
                shape: StadiumBorder(),
                padding: EdgeInsets.all(12),
              ),
              child: Text('Commencer'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SocialPage(),
                )
                );
              }, // Navigation entre la seconde Page
            ),
          ),
          ),
        ],
      ),
     ),
   ),
    );
  }

}

class Imageslogo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Image(image: AssetImage('image/fitting_logo.png'));
  }
}