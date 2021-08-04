import 'package:fitting_connexion/delayed_animation.dart';

import 'package:fitting_connexion/social_page.dart';
import 'package:flutter/material.dart';
import 'package:fitting_connexion/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fitting_connexion/welcome.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white ,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black, size: 30,
          ),
          onPressed: () {Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Delayy(delay: 300, child: Container(
              height: 280,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 50,
                  horizontal: 60,


                ),
                child: Column(
                  children: [
                    Text('Connecter une nouvelle adresse e-mail',textAlign: TextAlign.center, style: GoogleFonts.poppins(
                      color: magic_color,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                    SizedBox
                      (height: 10,
                    ),
                    Text("Il est recommandé de vous connectez avec une adresse e-mail, poour pouvoir profitez de l'experience Fitting à tout moment",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 15,

                      ),
                    ),
                  ],
                ),
              ),
            ),
            ),
            LoginForm(),
            Delayy(delay: 600, child: Container(

              margin: EdgeInsets.only(
                top: 190,
                bottom: 20,
              ),

              child: Text("Faire du shopping nous rapproche", style: GoogleFonts.poppins(
                color: Colors.grey, fontSize: 16,
              ),),
            ),
            ),
            Delayy(delay: 600, child: Container(
              width: double.infinity,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: magic_color,
                  shape: StadiumBorder(),
                  padding: EdgeInsets.all(12),
                ),
                child: Text('Continuer'),
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
    );
  }
}

class LoginForm extends StatefulWidget {
  var _obscureText = true;
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
 // bool _obscureText => true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Delayy(delay: 900, child: TextField(
          decoration: InputDecoration(
            labelText: 'Ton Email',
            labelStyle: TextStyle(
              color: Colors.grey[400],
            ),
          ),
          ),
          ),
          SizedBox(height: 30),
          Delayy(delay: 1000, child: TextField(
          //  obscureText: _obscureText,
            decoration: InputDecoration(
              labelStyle: TextStyle(
                color: Colors.grey[400],
              ),
              labelText: 'Mot de passe',
              suffixIcon: IconButton(
                icon: Icon(Icons.visibility,
                color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                   //  _obscureText = !_obscureText;
                  });
                },
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}