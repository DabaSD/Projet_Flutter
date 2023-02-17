import 'package:flutter/material.dart';

class MyModules extends StatefulWidget {
  const MyModules({Key? key}) : super(key: key);

  @override
  _MyModuleState createState() => _MyModuleState();
}


class _MyModuleState extends State<MyModules> {
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
                decoration:BoxDecoration(
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
                          decoration:BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight:Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            )
                          ),
                      )
                      ),
                      Positioned(
                        top:110,
                        left:20,
                        child: Text("Modules et Applications",style:TextStyle(fontSize:20,color:Color.fromARGB(255, 66, 107, 140),fontWeight: FontWeight.w300,)),
                        )
                  ],
                ),
              ),
              SizedBox(height:height*0.05,),
              Container(
                height:230,
                child:Stack(
                  children: [
                    Positioned(
                      top:35,
                      left:35,
                      child: Material(
                        child: Container(
                          height:188.0,
                          width:width*0.9,
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(0.0),
                            boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 4.0,
                              blurRadius: 7,
                              offset:new Offset(-10.0, 10.0), // changes position of shadow
                            ),
                          ],
                           
                          ),
                        ),

                      )),
                      Positioned(
                        top:0,
                        left: 30,
                        child: Card(
                          elevation:10.0,
                          shadowColor: Colors.grey.withOpacity(0.5),
                          shape:RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(15.0), 
                            ),
                            child:Container(
                              height: 200,
                              width: 150,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image : DecorationImage(
                                  fit:BoxFit.fill,
                                  image:AssetImage("contrat.png"),
                                ),
                              )
                            )
                        ),
                        ),
                        Positioned(
                          top: 45,
                          left: 200,
                          child:
                          Container(
                            height: 190,
                            width: 250,
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text("Recrutement",style: TextStyle(
                                  fontSize: 22,
                                  color:Color.fromARGB(255, 66, 107, 140),
                                  fontWeight: FontWeight.bold,
                                ),),
                                Divider(color: Colors.black,),
                                Text("Gestion et suivi des campagnes de recrutement",style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  
                                ),),
                                
                                Padding(
                                  padding:EdgeInsets.only(top:35),
                                 child:Image(
                                  image:AssetImage("parametre.png"),
                                  width:40,
                                  height:40,
                                   ),
                                ),
                                
                            ],
                            ),
                           

                          

                          ),
                          ),
                        

                  ],
                ),
              )

          ],
        ),


   );
   
  }
}