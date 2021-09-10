// To parse this JSON data, do
//
//     final platoModel = platoModelFromJson(jsonString);

import 'dart:convert';

PlatoModel platoModelFromJson(String str) => PlatoModel.fromJson(json.decode(str));

String platoModelToJson(PlatoModel data) => json.encode(data.toJson());

class PlatoModel {
  PlatoModel({
    this.id,
    this.descripcion,
    this.observaciones,
    this.tamano,
    this.peso,
    this.categoria,
    this.subCategoria,
    this.calificador,
    this.precio,
    this.image,
    this.imagenDispositivo,
    this.estado,
    this.fechaHora,
  });

  final String? id;
  final String? descripcion;
  final String? observaciones;
  final String? tamano;
  final String? peso;
  final String? categoria;
  final String? subCategoria;
  final String? calificador;
  final String? precio;
  final String? image;
  final String? imagenDispositivo;
  final String? estado;
  final String? fechaHora;

  factory PlatoModel.fromJson(Map<String, dynamic> json) => PlatoModel(
        id: json["id"] ?? '',
        descripcion: json["descripcion"] ?? '',
        observaciones: json["observaciones"] ?? '',
        tamano: json["tamano"] ?? '',
        peso: json["peso"] ?? '',
        categoria: json["categoria"] ?? '',
        subCategoria: json["sub_categoria"] ?? '',
        calificador: json["calificador"] ?? '',
        precio: json["precio"] ?? '',
        image: json["image"] ?? '',
        imagenDispositivo: json["imagen_dispositivo"] ?? '',
        estado: json["estado"] ?? '',
        fechaHora: json["fecha_hora"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "descripcion": descripcion,
        "observaciones": observaciones,
        "tamano": tamano,
        "peso": peso,
        "categoria": categoria,
        "sub_categoria": subCategoria,
        "calificador": calificador,
        "precio": precio,
        "image": image,
        "imagen_dispositivo": imagenDispositivo,
        "estado": estado,
        "fecha_hora": fechaHora,
      };
}
