import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app_spedizioni/cubit/listaArticoli_cubit.dart';
import 'package:app_spedizioni/articoloModel.dart';

class ListaArticoliPage extends StatefulWidget {
  ListaArticoliPage({Key key}) : super(key: key);

  @override
  _ListaArticoliPageState createState() => _ListaArticoliPageState();
}

class _ListaArticoliPageState extends State<ListaArticoliPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey[900],
       appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: 
    Text(
      'Lista degli articoli',
      style: TextStyle(
        color: Colors.green,
      ),
    ),
  
              
            ),

            
       body: Container(
         child: BlocBuilder <ListaArticoliCubit, ListaArticoliState>(
           builder: (context, state) {
             if (state is ListaArticoliLoading){
               return Scaffold(
                  body: Center(
                    child: CircularProgressIndicator()
                  )
               );
             } else if(state is ListaArticoliFailure){
               return Scaffold(
                  body: Center(
                    child: Text("Errore")
                  )
               );
             }else if(state is ListaArticoliLoaded){
               return buildPage(state.articoli);
                            }
                          },
                        )
                      ),
                      
                      
                   );
                   
                 }
                          
    Widget buildPage(List<ArticoloModel> articoli) {
      return ListView.builder(
        itemCount: articoli.length,
        itemBuilder: (context, index){
          
        return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
           ListTile(
            
            leading: Text(articoli[index].prezzo.toString() +'£', style: TextStyle(fontSize: 20)),
            title: Text(articoli[index].nome.toString()),
            subtitle: Text(articoli[index].descrizione.toString()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('ACQUISTA'),
                onPressed: () { /* ... */ },
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
                  
                  
      });
      
      



    }
    }