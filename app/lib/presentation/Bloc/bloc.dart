import 'package:flutter_bloc/flutter_bloc.dart';
import 'event.dart';
import 'state.dart';

class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc() : super(InitialState()) {
    on<InitialEvent>((event, emit) {
    });

  }
}
