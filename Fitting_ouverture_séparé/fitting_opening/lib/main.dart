import 'package:fitting_connexion/welcome.dart';
import 'package:flutter/material.dart';
import 'delayed_animation.dart';



const magic_color = Color(0xFF1BB7D3);
const color_dark = Color(0xFF97B9BE);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitting',
      debugShowCheckedModeBanner: false,
      home:WelcomePage(),
     );
  }
 }
