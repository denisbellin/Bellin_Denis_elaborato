import 'package:app_spedizioni/credenziali/autenticazione.dart';
import 'package:app_spedizioni/credenziali/registrazione.dart';
import 'package:flutter/material.dart';


class CarrelloPage extends StatefulWidget {
  CarrelloPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  CarrelloPageState createState() => CarrelloPageState();
}


final myController = TextEditingController();
final myController2 = TextEditingController();
final myController3 = TextEditingController();
 String nome = "";
 String tipo = "";
 String data = "";
class CarrelloPageState extends State<CarrelloPage> {
  
  void initState(){
    super.initState();
    
      
            setState(() {});
         
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
      'Nuovo ordine',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.green,
      ),
    ),
  


centerTitle: true,
),

            
            body: Center(
              
               
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                       padding: const EdgeInsets.all(16.0),
                       child: Text(
                    'Email: nome@gmail.com',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[400],
                      
                      ),
                      
                  ),
                  ),
                  Padding(
                       padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Codice fiscale: AAAAAA11A11A111A',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[400],
                      ),
                      
                  ),),
                  Padding(
                       padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Articoli: Cuffie bluetooth, rossetto, profumo',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[400],
                      ),
                  ),),
                  Padding(
                       padding: const EdgeInsets.all(16.0),
                       child: TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      filled:true,
                                      labelText: 'Indirizzo',
                                      labelStyle: TextStyle(
                                        color: Colors.grey[500],
                                      ),
                                      focusColor: Colors.green,
                                      
                                    ),
                                    controller: myController2,
                                  ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Totale: 122£',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[400],
                      ),
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 120.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      ),
                      primary: Colors.green[600],
                      
                      ),

                     child: 
    Text(
      'Acquista',
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
                        onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AutenticazionePage(),),);
                    
                    },
                    
                    ),
                    
                  ),
                    ],
                    
              ),
              
            ),
            
   );
             
          
          
        }
      
        
}

