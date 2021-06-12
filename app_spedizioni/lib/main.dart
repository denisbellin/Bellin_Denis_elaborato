import 'package:app_spedizioni/cubit/listaArticoli_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/lista_cubit.dart';
import 'home.dart';

 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
    BlocProvider<ListaCubit>(
      create: (BuildContext context) => ListaCubit(),
    ),
    BlocProvider<ListaArticoliCubit>(
      create: (BuildContext context) => ListaArticoliCubit(),
    ),
    
  ],child: MaterialApp(
        title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'ZucExp spedizioni'),
    ),
    );
  }
  
}

