

part of 'listaArticoli_cubit.dart';

@immutable
abstract class ListaArticoliState {}

class ListaArticoliInitial extends ListaArticoliState {}

class ListaArticoliLoading extends ListaArticoliState{}

class ListaArticoliLoaded extends ListaArticoliState{
  final List <ArticoloModel> articoli;
  ListaArticoliLoaded({@required this.articoli});
}

class ListaArticoliFailure extends ListaArticoliState{}