import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import '../../model/infoCarro.dart';
import 'event.dart';
import 'states.dart';

class BlocPage extends Bloc<Eventos, Estados> {
  BlocPage() : super(PageInitial()) {
    on<Eventos>((event, emit) async {
      emit(PageLoading());

      final dio = Dio();
      final url = "https://raw.githubusercontent.com/MarkusGutierrez10/json/refs/heads/main/angel.json";

      final response = await dio.get(url);

      Map<String, dynamic> objectMap = jsonDecode(response.data);

      await Future.delayed(Duration(seconds: 7));
      print(response.statusCode);

      if (response.statusCode == 200) {
        Carro datos = Carro(objectMap);
        emit(PageSuccess(datos));
      } else {
        emit(PageFailure());
      }
    });
  }
}
