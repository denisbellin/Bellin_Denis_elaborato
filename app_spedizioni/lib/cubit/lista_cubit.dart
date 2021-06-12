import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:app_spedizioni/ordineModel.dart';

import '../articoloModel.dart';

part 'lista_state.dart';

class ListaCubit extends Cubit<ListaState> {
  ListaCubit() : super(ListaInitial());

  





Future <void> getOrdini() async{
    try {
      emit(ListaLoading());
      final result1 = await httpRequest();
      emit(ListaLoaded(ordini: result1));
    }
    on Exception{
      emit(ListaFailure());
    }
    
  }
  Future<List<OrdineModel>> httpRequest() async {
    var response1 = await http.get(Uri.http('58e4bef6ce94.ngrok.io', '/ordine'));
    
    var rb1 = response1.body;
    var list1 = json.decode(rb1) as List;
     List<OrdineModel> ordini = list1.map((e) => OrdineModel.fromJson(e)).toList();
     return ordini;
}
}
