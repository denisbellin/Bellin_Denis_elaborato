import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app_spedizioni/cubit/lista_cubit.dart';
import 'package:app_spedizioni/ordineModel.dart';

class ListaPage extends StatefulWidget {
  ListaPage({Key key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey[900],
       appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: 
    Text(
      'I miei ordini',
      style: TextStyle(
        color: Colors.green,
      ),
    ),
  
              
            ),

            
       body: Container(
         child: BlocBuilder <ListaCubit, ListaState>(
           builder: (context, state) {
             if (state is ListaLoading){
               return Scaffold(
                  body: Center(
                    child: CircularProgressIndicator()
                  )
               );
             } else if(state is ListaFailure){
               return Scaffold(
                  body: Center(
                    child: Text("Errore")
                  )
               );
             }else if(state is ListaLoaded){
               return buildPage(state.ordini);
                            }
                          },
                        )
                      ),
                      
                      
                   );
                   
                 }
                          
    Widget buildPage(List<OrdineModel> ordini) {
      return ListView.builder(
        itemCount: ordini.length,
        itemBuilder: (context, index){
          
        return Card(
          
                      child: ListTile(
                        
                    contentPadding: EdgeInsets.all(8.0),
                    title: Text(ordini[index].partenza),
                    subtitle: Text(ordini[index].stato.toString()),

                    
                  )
                  );
                  
      });
      
      



    }
    }