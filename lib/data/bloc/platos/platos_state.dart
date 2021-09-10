part of 'platos_bloc.dart';

@immutable
class PlatosState {
  final bool isWorking;
  final PlatoModel plato;
  final List<PlatoModel> lstPlatos;
  final List<PlatoModel> lstCategorias;
  final List<PlatoModel> lstPlatosSCategorias;
  final String accion;

  PlatosState({this.accion = '', this.isWorking = false, plato, lstPlatos, lstCategorias, lstPlatosSCategorias})
      : this.plato = plato ?? new PlatoModel(),
        this.lstPlatos = lstPlatos ?? [],
        this.lstCategorias = lstCategorias ?? [],
        this.lstPlatosSCategorias = lstPlatosSCategorias ?? [];

  PlatosState copyWith(
          {bool? isWorking,
          String? accion,
          PlatoModel? plato,
          List<PlatoModel>? lstPlatos,
          List<PlatoModel>? lstCategorias,
          List<PlatoModel>? lstPlatosSCategorias}) =>
      PlatosState(
          isWorking: isWorking ?? this.isWorking,
          accion: accion ?? this.accion,
          lstCategorias: lstCategorias ?? this.lstCategorias,
          lstPlatos: lstPlatos ?? this.lstPlatos,
          lstPlatosSCategorias: lstPlatosSCategorias ?? this.lstPlatosSCategorias,
          plato: plato ?? this.plato);

  PlatosState iniState() => new PlatosState();
}
