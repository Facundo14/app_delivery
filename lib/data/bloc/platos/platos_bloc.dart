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
  imagenDispositivo: 'assets/category/pizza.png',
  observaciones: 'Tomate (1), Queso (200gm)',
  peso: '1Kg',
  precio: '15.00',
  subCategoria: 'Pizza',
  tamano: '30cm',
);
final PlatoModel plato2 = new PlatoModel(
  id: '2',
  calificador: '5',
  categoria: 'Italiana',
  descripcion: 'Pizza',
  estado: 'activo',
  fechaHora: '25/05/2020',
  image: 'https://image.freepik.com/free-photo/fried-chicken-with-french-fries-nuggets-meal_1339-78221.jpg',
  imagenDispositivo: 'assets/category/pizza.png',
  observaciones: 'Tomate (1), Queso (200gm)',
  peso: '1Kg',
  precio: '15.00',
  subCategoria: 'Pizza',
  tamano: '30cm',
);
final PlatoModel plato3 = new PlatoModel(
  id: '3',
  calificador: '5',
  categoria: 'China Food',
  descripcion: 'Pizza',
  estado: 'activo',
  fechaHora: '25/05/2020',
  image: 'https://image.freepik.com/free-photo/fried-chicken-with-french-fries-nuggets-meal_1339-78221.jpg',
  imagenDispositivo: 'assets/category/pez.png',
  observaciones: 'Tomate (1), Queso (200gm)',
  peso: '1Kg',
  precio: '15.00',
  subCategoria: 'Pizza',
  tamano: '30cm',
);
final PlatoModel plato4 = new PlatoModel(
  id: '4',
  calificador: '5',
  categoria: 'Sea Food',
  descripcion: 'Pizza',
  estado: 'activo',
  fechaHora: '25/05/2020',
  image: 'https://image.freepik.com/free-photo/fried-chicken-with-french-fries-nuggets-meal_1339-78221.jpg',
  imagenDispositivo: 'assets/category/sushi.png',
  observaciones: 'Tomate (1), Queso (200gm)',
  peso: '1Kg',
  precio: '15.00',
  subCategoria: 'Pizza',
  tamano: '30cm',
);
final PlatoModel plato5 = new PlatoModel(
  id: '5',
  calificador: '5',
  categoria: 'Diet Food',
  descripcion: 'Pizza',
  estado: 'activo',
  fechaHora: '25/05/2020',
  image: 'https://image.freepik.com/free-photo/fried-chicken-with-french-fries-nuggets-meal_1339-78221.jpg',
  imagenDispositivo: 'assets/category/vegetales.png',
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
      Future.delayed(Duration(seconds: 5));
      final List<PlatoModel> lista = [];
      lista.add(plato1);
      lista.add(plato2);
      lista.add(plato3);
      lista.add(plato4);
      lista.add(plato5);
      yield state.copyWith(isWorking: false, lstPlatos: lista);
    } else if (event is OnEstablecePlatoSeleccionado) {
      yield state.copyWith(isWorking: true, accion: 'OnEstablecePlatoSeleccionado');
      if (event.id != '') {
        final plato = state.lstPlatos.firstWhere((element) => (element.id == event.id));
        yield state.copyWith(isWorking: false, plato: plato);
      }
    } else if (event is OnObtieneCategorias) {
      yield state.copyWith(isWorking: true, accion: 'OnObtieneCategoria');
      Future.delayed(Duration(seconds: 1));
      List<PlatoModel> lista = [];
      lista.addAll([plato1, plato2, plato3, plato4, plato5]);
      List<PlatoModel> categorias = [];
      lista.forEach((element) {
        categorias.add(element);
      });

      yield state.copyWith(isWorking: false, lstCategorias: categorias);
    }
  }
}
