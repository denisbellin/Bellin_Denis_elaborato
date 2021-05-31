import 'dart:ui';

import 'package:flutter/material.dart';



class RegistrazionePage extends StatefulWidget {
  RegistrazionePage({Key key}) : super(key: key);

  @override
  _RegistrazionePageState createState() => _RegistrazionePageState();
}

final myController = TextEditingController();
final myController2 = TextEditingController();
final myController3 = TextEditingController();
 String cf = "";
 String nome = "";
 String cognome = "";
 String email = "";
 String password = "";

class _RegistrazionePageState extends State<RegistrazionePage> {
  void initState(){
    //super.initState();
    //$FloordbPrenotazioni
    //.databaseBuilder('dbPrenotazioni.db')
    //.build()
    //.then((value) async{
     // database = value;
      
            setState(() {});
          //});
        }
      
        @override
        Widget build(BuildContext context) {
          
          return Scaffold(
            backgroundColor: Colors.grey[900],
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: 
    Text(
      'Registrazione',
      style: TextStyle(
        fontSize: 20,
        color: Colors.green,
      ),
    ),
           
              
              
              
              
            
              
            ),
            body: Center(
              
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget>[
                   Text(
      'Registrati con noi',
      style: TextStyle(
        fontSize: 20,
        color: Colors.grey[300],
      ),
    ),
                    
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      filled:true,
                                      labelText: 'Codice fiscale',
                                      labelStyle: TextStyle(
                                        color: Colors.grey[500],
                                      ),
                                      focusColor: Colors.green,
                                      
                                    ),
                                    controller: myController2,
                                  ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      filled:true,
                                      labelText: 'Nome',
                                      labelStyle: TextStyle(
                                        color: Colors.grey[500],
                                      ),
                                      focusColor: Colors.green,
                                      
                                    ),
                                    controller: myController2,
                                  ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      filled:true,
                                      labelText: 'Cognome',
                                      labelStyle: TextStyle(
                                        color: Colors.grey[500],
                                      ),
                                      focusColor: Colors.green,
                                      
                                    ),
                                    controller: myController2,
                                  ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      filled:true,
                                      labelText: 'Email',
                                      labelStyle: TextStyle(
                                        color: Colors.grey[500],
                                      ),
                                      focusColor: Colors.green,
                                      
                                    ),
                                    controller: myController2,
                                  ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      filled:true,
                                      labelText: 'Password',
                                      labelStyle: TextStyle(
                                        color: Colors.grey[500],
                                      ),
                                      focusColor: Colors.green,
                                      
                                    ),
                                    controller: myController2,
                                  ),
                     ),
                    new ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      primary: Colors.green[600],),

                     child: Icon(
                        Icons.person_add,
                        color: Colors.white,
                        size: 50.0,
                        ),
                     
                     
                    onPressed: () {
                      
                      //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> (),),);
                    
                    },
                    
                    ),
                    ],
              ),
            ),
             
          );
        }
      
        
}