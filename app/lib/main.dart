import 'package:app/presentation/view/failure.dart';
import 'package:app/presentation/view/loanding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/Bloc/bloc.dart';
import 'presentation/Bloc/state.dart';
import 'presentation/view/initial.dart';
import 'presentation/view/success.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocConsumer<MyBloc, MyState>(
        listener: (context, state) {
          if (state is Correcto) {
            Navigator.push(context, MaterialPageRoute(builder: (_) => Success()));
          }
        },
        builder: (context, state) {
          if (state is Cargando) {
            return const Loanding();
          } else if (state is Eerror) {
            return Failure();
          } else {
            return Initial();
          }
        },
      ),
    );
  }
}
