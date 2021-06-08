import 'package:app_spedizioni/cubit/ordineModel.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:app_spedizioni/cubit/lista_cubit.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

part 'lista_state.dart';

class ListaCubit extends Cubit<ListaState> {
  ListaCubit() : super(ListaInitial());

  Future <void> getOrdini() async{
    try {
      emit(ListaLoading());
      final result = await httpRequest();
      emit(ListaLoaded(ordini: result));
    }
    on Exception{
      emit(ListaFailure());
    }
  }
  Future<List<OrdineModel>> httpRequest() async {
    var response = await http.get(Uri.http('10.0.2.2:3000', '/aule'));
    
    var rb = response.body;
    var list = json.decode(rb) as List;
     List<OrdineModel> ordini = list.map((e) => OrdineModel.fromJson(e)).toList();
     return ordini;
}

}

class Cubit {
}


