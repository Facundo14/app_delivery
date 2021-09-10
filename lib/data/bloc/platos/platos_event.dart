part of 'platos_bloc.dart';

@immutable
abstract class PlatosEvent {}

class OnObtienePlatos extends PlatosEvent {

  OnObtienePlatos();
}

class OnEstablecePlatoSeleccionado extends PlatosEvent {
  final String id;
  OnEstablecePlatoSeleccionado(this.id);
}
