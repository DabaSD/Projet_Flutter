import 'package:flutter/material.dart';
import 'package:projet_flutter/NouveauPoste.dart';
import 'package:projet_flutter/NouvelleCandidature.dart';
import 'package:projet_flutter/home_page.dart';

class MyLinks extends StatefulWidget {
  const MyLinks({Key? key}) : super(key: key);

  @override
  _MyLinkState createState() => _MyLinkState();
}


class _MyLinkState extends State<MyLinks> {
  @override
  Widget build(BuildContext context) {
   final double height=MediaQuery.of(context).size.height;
   final double width=MediaQuery.of(context).size.width;  
   return Scaffold(

backgroundColor:Colors.white,
        body: Column(
          children: [
              Container(
                height: 230, 
                
                decoration:const BoxDecoration(
                  borderRadius:BorderRadius.only(
                    bottomRight:Radius.circular(60) 
                  ),
                    color:Color.fromARGB(255, 85,187,231 ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top:80,
                      left:0,
                      child:Container(
                          height: 100,
                          width:300,
                          decoration:const BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight:Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            )
                          ),
                      )
                      ),
                      const Positioned(
                        top:110,
                        left:20,
                        child: Text("RECRUTEMENT",style:TextStyle(fontSize:20,color:  Color(0xff4c505b),fontWeight: FontWeight.bold,)),
                        )
                  ],
                ),
              ),
              SizedBox(height:height*0.05,),
              Container(
                
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyPoste(debugShowCheckedModeBanner: false,)),
            );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 15, // épaisseur de l'ombre
                  shadowColor: const Color.fromARGB(255, 98, 168, 226), // couleur de l'ombre
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // rayon des coins
                  ),
                  minimumSize: const Size(300, 50),
                  backgroundColor: Colors.white, // taille minimale du bouton
                ),
                child: const Text(
                  'Nouveaux postes',
                  style: TextStyle(
                    color: Color(0xff4c505b), // couleur du texte
                    fontSize: 18, // taille du texte
                    fontWeight: FontWeight.bold, // poids de la police
                  ),
                  ),
              ),



              ),
              SizedBox(height:height*0.05,),
              Container(
                
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyCandidature(debugShowCheckedModeBanner: false,)),
            );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 15, // épaisseur de l'ombre
                  shadowColor: const Color.fromARGB(255, 98, 168, 226), // couleur de l'ombre
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // rayon des coins
                  ),
                  minimumSize: const Size(300, 50),
                  backgroundColor: Colors.white, // taille minimale du bouton
                ),
                child: const Text(
                  'Nouvelles candidatures',
                  style: TextStyle(
                    color: Color(0xff4c505b), // couleur du texte
                    fontSize: 18, // taille du texte
                    fontWeight: FontWeight.bold, // poids de la police
                  ),
                  ),
              ),



              ),
              SizedBox(height:height*0.05,),
              Container(
                
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
            );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 15, // épaisseur de l'ombre
                  shadowColor: const Color.fromARGB(255, 98, 168, 226), // couleur de l'ombre
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // rayon des coins
                  ),
                  minimumSize: const Size(300, 50),
                  backgroundColor: Colors.white, // taille minimale du bouton
                ),
                child: const Text(
                  'Liste des candidatures',
                  style: TextStyle(
                    color: Color(0xff4c505b), // couleur du texte
                    fontSize: 18, // taille du texte
                    fontWeight: FontWeight.bold, // poids de la police
                  ),
                  ),
              ),



              ),
          ],
        ),

   );
  }
}
