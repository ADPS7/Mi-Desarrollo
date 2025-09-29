abstract class MyState {}

class InitialState extends MyState {
  // Puedes agregar propiedades como loading, data, etc.
}

class Cargando extends MyState {}

class Correcto extends MyState {}

class Eerror extends MyState {}
