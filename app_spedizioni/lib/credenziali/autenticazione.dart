import 'dart:ui';

import 'package:app_spedizioni/cliente/lista.dart';
import 'package:app_spedizioni/cubit/listaArticoli_cubit.dart';
import 'package:app_spedizioni/cubit/lista_cubit.dart';
import 'package:app_spedizioni/pagine/logged.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class AutenticazionePage extends StatefulWidget {
  AutenticazionePage({Key key}) : super(key: key);

  @override
  _AutenticazionePageState createState() => _AutenticazionePageState();
}

final myController = TextEditingController();
final myController2 = TextEditingController();
 String email = "";
 String password = "";

class _AutenticazionePageState extends State<AutenticazionePage> {
  void initState(){
    super.initState();
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
      'Autenticazione',
      style: TextStyle(
        color: Colors.green,
      ),
    ),
  
              
            ),
            body: Center(
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget>[
                  Padding(
                       
                       padding: const EdgeInsets.all(16.0),
                       
                       child: Text(
                        'Benvenuto',
                        style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[400],
                        
                      ),
                      textAlign: TextAlign.center,
                  ),
                     ),
                     Padding(
                       
                       padding: const EdgeInsets.all(5.0),
                       
                       child: Text(
                        'Fai il login come cliente',
                        style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[300],
                        
                      ),
                      textAlign: TextAlign.center,
                  ),
                     ),
                     Padding(
                       
                       padding: const EdgeInsets.all(5.0),
                       
                       child: Text(
                        'o accedi come magazziniere',
                        style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[300],
                        
                      ),
                      textAlign: TextAlign.center,
                  ),
                     ),
                    
                     Padding(
                       
                       padding: const EdgeInsets.all(16.0),
                       
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
                                    controller: myController,
                                  ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(16.0),
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
                     
                      Padding(padding: EdgeInsets.all(8.0)),
                      Padding(
                        padding: const EdgeInsets.only(
                         left: 100,
                         right: 100,
                       ),
                        child: new ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        primary: Colors.green[600],),

                     child: 
                     
                         
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Icon(
                                Icons.person,
                                color: Colors.white,
                                ),
                              const SizedBox(width: 15),
                            Text('Login cliente')
                            
                           ],
                         
                     ),
                     
                    onPressed: () {
                      final listaCubit2 = BlocProvider.of<ListaArticoliCubit>(context);
                      listaCubit2.getArticoli();
                      final listaCubit = BlocProvider.of<ListaCubit>(context);
                      listaCubit.getOrdini();
                      

                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MyStatefulWidget(),),);
                     
                    },
                    
                    ),
                      ),
                  Padding(padding: EdgeInsets.all(16.0)),
                  TextButton(onPressed: (){}, child: Text('Gestisci un magazzino? accedi qui')),
                  
                  
                  
                  
                    
                    ],
              ),
            ),
             
          );
        }
      
        
}