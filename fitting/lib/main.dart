import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

// Definir une couleur
const magic_color = Color(0xFF1BB7D3);
const couleur = Color(0xFF0FC9F6);
const darkblue = Color(0xFF1299E1);

void main() {
  runApp(MyApp());
}

// My App
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

return MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Fitting',
    home: HomePage(),
    );
  }
}


// Page Home
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MyAppBar(),
      // enlever l'OverLay et agrandir la colonne
      body: SingleChildScrollView(
      child: Column(
        children: [
          SearchSection(),
          ShoesSection(),
          ],

        ),

      )
    );
  }
}



// On créer un widget separé la appBar car il y'a beaucoup de détails dans l'AppBar
// Utiliser l'implementation (PreferredSizeWidget lorsque l'on veut y implementer des boutons
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
Size get preferredSize => new Size.fromHeight(75);
  @override
Widget build(BuildContext context) {
    // Personalisation de la AppBar
    return AppBar(
      // Boutons De Gauche (retour)
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey[800], size: 25,
          ),
          onPressed: null,
        ),
       title: Text('Fitting', style: GoogleFonts.nunito(

         color: Colors.black,
         fontSize: 20,
         fontWeight: FontWeight.w700,
       ),
       ),
      // Centrer le titre
      centerTitle: true,

       // Boutons de Droite
       actions: [
         IconButton(
        icon:
        Icon(
          // Icone like
          Icons.favorite_outline_rounded,
          color: Colors.grey[800],
          size: 25,
        ),
        onPressed: null,
      ),
         IconButton(
           icon:
           Icon(
             // Icon localisation
             Icons.place,
             color: Colors.grey[800],
             size: 25,
           ),
           onPressed: null,
         ),
      ],

      // coloration de la Appbar
      backgroundColor: Colors.white,
    );
  }

}

class SearchSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container(
              padding: EdgeInsets.only(left: 20),
                // Styliser la boite
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      // rayon du flou
                      blurRadius: 10,
                      offset: Offset(1,1),
                    ),
                  ],
                ),

                // definir un champs où l'on peut rentrer du texte
                child: TextField(
                  // Ecris sur champs avant de rentrer du texte
                  decoration: InputDecoration(hintText: ' Trouve ta paire...',
                      contentPadding: EdgeInsets.all(10),
                  // retirer le trait bleu en dessous du field
                  border: InputBorder.none,
                  ),


                ),
              ),
              ),
              SizedBox(width: 10),
              Container(height: 50, width: 50, decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      // rayon du flou
                      blurRadius: 8,
                      offset: Offset(0,4),
                    ),
                  ],
              borderRadius: BorderRadius.all(Radius.circular(25),
              ),
              ),

                child: ElevatedButton(onPressed: () {},
                  child: Icon(
                      Icons.search
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                primary: darkblue,
                //primary: magic_color,


                ),
                ),
              ),

            ],
          ),
          // espacer le contenu entre la SearchView et la ShoesView
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  // Aligner le texte de la COLONNE
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Choisir un magasin, '),
                    Text('un commerçant..'),
                  ],

                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  // Aligner le texte de la COLONNE a gauhe
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('OU'),

                  ],

                ),
              ),



              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Choisir un endroit,'),
                    Text('un lieu ..'),

                  ],

                ),
              ),
             ],


          ),
        ],
      ),
    );
  }
}


class ShoesSection extends StatelessWidget {
      final List shoeslist = [
        {
          'title': 'Nike React 55',
          'shop': 'Foot Locker',
          'brand': 'Nike',
          'distance': 6,
          'place': '11 Rue Parmenier',
          'picture': 'images/chaussure1.jpg',
          'size': '40-46',
          'price': '160'

        },
        {
          'title': 'CALI STAR MIX ',
          'shop': 'Printemps',
          'brand': 'Puma',
          'distance': 13,
          'place': '145 Rue Leclerc',
          'picture': 'images/chaussure6.jpg',
          'size': '178 cm',
          'price': '59'

        },
        {
          'title': 'Basket basse Versace',
          'shop': 'Galeries La Faillette',
          'brand': 'Versace Jeans',
          'distance': 2,
          'place': '11 Avenue Fosh',
          'picture': 'images/chaussure4.jpg',
          'size': '39-46',
          'price': '199.45'

        },
        {
        'title': 'GERTIE HIGH TOP ',
        'shop': 'Printemps',
        'brand': 'Michael Kors',
        'distance': 23,
        'place': '5 Rue de Beaugrenelle',
        'picture': 'images/chaussure7.jpg',
        'size': '40-46',
        'price': '199.95'

        },
      ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(children: [
        Container(

          height: 50,
          child: Row(
           // Allignement à la colonne
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(
                'HOME',
              style: GoogleFonts.nunito(
                color: Colors.black,
                fontSize: 15,
              ),
            ),

            Row(
            children: [
              Text(
                'Filters',
                style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),


              IconButton(
                icon: Icon(
                  Icons.filter_list_outlined,
                  color: magic_color,
                  size: 25,
                ),
                onPressed: null,
              ),
             ],
          ),
        ],
          ),
       ),
        Column(
          children: shoeslist.map((shoes) {
            return ShoesCard(shoes);

          }).toList(),
        ),],
      ),
    );
  }
}

class ShoesCard extends StatelessWidget {
  final Map shoesData;
  ShoesCard(this.shoesData);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Personnalisation des boites photos
    return Container(
      height: 270,
      width: double.infinity,
      margin: EdgeInsets.all(7),
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.all(
             Radius.circular(18)),
         boxShadow: [
           BoxShadow(
             color: Colors.grey.shade400,
             spreadRadius: 4,
             blurRadius: 8,
             offset: Offset(0, 3),
           ),
         ],
       ),
      child: Column(

        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),

              ),
              color: Colors.yellow,
              image: DecorationImage(
                  image: AssetImage(
                      shoesData['picture'],
                  ),
                fit: BoxFit.cover,
              ),
            ),

            // Ajout d'un icone pour aimer un produit
            // stack pour superposer a notre widget
            child: Stack(children: [
              Positioned(
                right: -13,
                top: 5,
                child: MaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.favorite_outline_rounded,
                  color: couleur,
                  size: 25,
                ),
              ),
              ),

            ],),
          ),
          Container(
            // On decolle les ecriture des bords
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(shoesData['title'],
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
                ),
                Text(shoesData['price'] + '\€',
                  style: GoogleFonts.nunito(
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),
                  
                ),],

            ),

          ),
          Container(margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(shoesData['place'],
                style: GoogleFonts.nunito(
                  fontSize: 13,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w800,
                ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.place,
                          color: couleur,
                      size: 15,
                    ),
                    Text(shoesData['distance'].toString() + 'km de toi',
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
                Container(margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(shoesData['brand'],
                      style: GoogleFonts.nunito(
                      fontSize: 13,
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                      ),
                   ),
                 ],
                ),
           ),
        ],
      ),
    );
  }
}
