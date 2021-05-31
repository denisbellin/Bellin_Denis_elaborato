import 'dart:ui';

import 'package:app_prenotazioni/room_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/room_cubit.dart';

class PrenotazioniPage extends StatefulWidget {
  PrenotazioniPage({Key key}) : super(key: key);

  @override
  _PrenotazioniPageState createState() => _PrenotazioniPageState();
}

class _PrenotazioniPageState extends State<PrenotazioniPage> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey[900],
       appBar: AppBar(
              backgroundColor: Colors.grey[800],
              title: Text(
                "elenco prenotazioni",
                style: TextStyle(
                  color: Colors.orange[800],
                ),
                ),
              centerTitle: true,
              
            ),

            
       body: Container(
         child: BlocBuilder <RoomCubit, RoomState>(
           builder: (context, state) {
             if (state is RoomLoading){
               return Scaffold(
                  body: Center(
                    child: CircularProgressIndicator()
                  )
               );
             } else if(state is RoomFailure){
               return Scaffold(
                  body: Center(
                    child: Text("Errore")
                  )
               );
             }else if(state is RoomLoaded){
               return buildPage(state.rooms);
                            }
                          },
                        )
                      ),
                   );
                 }
               
    Widget buildPage(List<RoomModel> rooms) {
      return ListView.builder(
        itemCount: rooms.length,
        itemBuilder: (context, index){
          
        return Card(
          
                      child: ListTile(
                        
                    contentPadding: EdgeInsets.all(8.0),
                    title: Text(rooms[index].nome),
                    subtitle: Text(rooms[index].data.toString()),
                    
                  )
                  );
      });
    }
}