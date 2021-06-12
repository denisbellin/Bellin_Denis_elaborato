import 'package:app_spedizioni/credenziali/autenticazione.dart';
import 'package:app_spedizioni/credenziali/registrazione.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


final myController = TextEditingController();
final myController2 = TextEditingController();
final myController3 = TextEditingController();
 String nome = "";
 String tipo = "";
 String data = "";
class _MyHomePageState extends State<MyHomePage> {
  
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
      'ZucExp spedizioni',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.grey[300],
      ),
    ),
  


centerTitle: true,
),

            
            body: Center(
              
               
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget>[

                    CircleAvatar(
                      radius: 60,
                      child: Icon(
                        Icons.local_shipping,
              color: Colors.white,
              size: 60.0,
            ),
                    ),
                     
                     
                  Padding(padding: EdgeInsets.all(8.0)),
                    Text(
                    'ZucExp spedizioni ti da ',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[400],
                      ),
                  ),
                  Text(
                    ' il benvenuto. Accedi o registrati ',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[400],
                      ),
                  ),
                  Text(
                    'per usufruire dei nostri servizi!',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[400],
                      ),
                  ),
                  Padding(padding: EdgeInsets.all(16.0)),
                    new ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),),
                      primary: Colors.green[600],),

                     child: 
    Text(
      'accedi',
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
  

                     
                     
                    onPressed: () {
                      
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AutenticazionePage(),),);
                    
                    },
                    
                    ),
                    new ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),),
                      primary: Colors.green[600],),

                     child: 
    Text(
      'registrati',
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
  
                     
                     
                    onPressed: () {
                      
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RegistrazionePage(),),);
                    
                    },
                    
                    ),
                    
                    ],
                    
              ),
              
            ),
            
   );
             
          
          
        }
      
        
}

