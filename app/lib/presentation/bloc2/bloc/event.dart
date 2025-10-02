import 'package:equatable/equatable.dart';

sealed class Eventos extends Equatable {
  Eventos();

  @override
  List<Object> get props => [];
}

class HomeSearchPressed extends Eventos{}

