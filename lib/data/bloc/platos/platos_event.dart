part of 'platos_bloc.dart';

@immutable
abstract class PlatosEvent {}

class OnObtienePlatos extends PlatosEvent {
  OnObtienePlatos();
}

class OnObtieneCategorias extends PlatosEvent {
  OnObtieneCategorias();
}

class OnEstablecePlatoSeleccionado extends PlatosEvent {
  final String id;
  OnEstablecePlatoSeleccionado(this.id);
}
