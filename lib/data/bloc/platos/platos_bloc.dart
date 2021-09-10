import 'dart:async';

import 'package:app_delivery/data/model/plato_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'platos_event.dart';
part 'platos_state.dart';

final PlatoModel plato1 = new PlatoModel(
  id: '1',
  calificador: '5',
  categoria: 'Italiana',
  descripcion: 'Pizza',
  estado: 'activo',
  fechaHora: '25/05/2020',
  image: 'https://image.freepik.com/free-photo/fried-chicken-with-french-fries-nuggets-meal_1339-78221.jpg',
  imagenDispositivo: 'assets/img1.png',
  observaciones: 'Tomate (1), Queso (200gm)',
  peso: '1Kg',
  precio: '15.00',
  subCategoria: 'Pizza',
  tamano: '30cm',
);
final PlatoModel plato2 = new PlatoModel(
  id: '1',
  calificador: '5',
  categoria: 'Italiana',
  descripcion: 'Pizza',
  estado: 'activo',
  fechaHora: '25/05/2020',
  image: 'https://image.freepik.com/free-photo/fried-chicken-with-french-fries-nuggets-meal_1339-78221.jpg',
  imagenDispositivo: 'assets/img1.png',
  observaciones: 'Tomate (1), Queso (200gm)',
  peso: '1Kg',
  precio: '15.00',
  subCategoria: 'Pizza',
  tamano: '30cm',
);

class PlatosBloc extends Bloc<PlatosEvent, PlatosState> {
  PlatosBloc() : super(PlatosState());

  @override
  Stream<PlatosState> mapEventToState(
    PlatosEvent event,
  ) async* {
    if (event is OnObtienePlatos) {
      yield state.copyWith(isWorking: true, accion: 'OnObtienePlatos');
      Future.delayed(Duration(seconds: 1));
      final List<PlatoModel> lista = [];
      yield state.copyWith(isWorking: false, lstPlatos: lista);
    } else if (event is OnEstablecePlatoSeleccionado) {
      yield state.copyWith(isWorking: true, accion: 'OnEstablecePlatoSeleccionado');
      if (event.id != '') {
        final plato = state.lstPlatos.firstWhere((element) => (element.id == event.id));
        yield state.copyWith(isWorking: false, plato: plato);
      }
    }
  }
}
