import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfil/presentation/bloc/bloc.dart';
import 'package:perfil/presentation/bloc/homeState.dart';

import 'presentation/view/ErrorView.dart';
import 'presentation/view/LoadingView.dart';
import 'presentation/view/formulario.dart';
import 'presentation/view/success.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            if (state is Correcto) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Home()),
              );
            }
          },
          builder: (context, state) {
            if (state is Cargando) {
              return const ViewCargando();
            } else if (state is Error) {
              return ViewError();
            } else {
              return ViewLogin();
            }
          },
        ),
      ),
    );
  }
}
