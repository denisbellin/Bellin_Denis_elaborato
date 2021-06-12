import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:app_spedizioni/articoloModel.dart';

part 'listaArticoli_state.dart';

class ListaArticoliCubit extends Cubit<ListaArticoliState> {
  ListaArticoliCubit() : super(ListaArticoliInitial());

  Future <void> getArticoli() async{
    try {
      emit(ListaArticoliLoading());
      final result = await httpRequest();
      emit(ListaArticoliLoaded(articoli: result));
    }
    on Exception{
      emit(ListaArticoliFailure());
    }
  }
  Future<List<ArticoloModel>> httpRequest() async {
    var response = await http.get(Uri.http('58e4bef6ce94.ngrok.io', '/articolo'));
    
    var rb = response.body;
    var list = json.decode(rb) as List;
     List<ArticoloModel> articoli = list.map((e) => ArticoloModel.fromJson(e)).toList();
     return articoli;
}

}
