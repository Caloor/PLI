import 'package:fitting_connexion/delayed_animation.dart';
import 'package:fitting_connexion/login_page.dart';
import 'package:flutter/material.dart';
import 'package:fitting_connexion/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fitting_connexion/welcome.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 30,
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
            child: Image.asset('images/fittinglogo.png'),
          ),
          ),
          Delayy(delay: 600, child: Container(
            height: 280,
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 50,
                horizontal: 60,


              ),
              child: Column(
                children: [
                  Text('Ajouter un compte',textAlign: TextAlign.center, style: GoogleFonts.poppins(
                    color: magic_color,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                  SizedBox
                    (height: 10,
                  ),
                  Text("Choisissez votre mode d'inscription",
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
          Delayy(delay:  900,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 14,
                ),
                child: Column(
                  children: [
                    ElevatedButton(onPressed: () {Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => LoginPage(),
                          ),
                       );
                    },
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        primary: magic_color,
                        padding: EdgeInsets.all(10)
                      ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Icon(Icons.mail_outline_outlined),
                        // ecart entre le logo et le texte du logo
                        SizedBox(width: 10,
                        ),
                        Text(("Email"),
                        ),
                      ],
                    ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(onPressed: () {Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                    );
                    },
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Color(0xFF576dff),
                          padding: EdgeInsets.all(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          // choix du logo facebook
                          FaIcon(FontAwesomeIcons.facebook),
                          SizedBox(width: 10,
                          ),
                          Text(("Facebook"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ),
        ],
      ),
      ),
    );
  }
}
