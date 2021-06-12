

part of 'lista_cubit.dart';

@immutable
abstract class ListaState {}

class ListaInitial extends ListaState {}

class ListaLoading extends ListaState{}

class ListaLoaded extends ListaState{
  final List <OrdineModel> ordini;
  ListaLoaded({@required this.ordini});
}

class ListaFailure extends ListaState{}

