import 'package:flutter/material.dart';

class PopularBookModel {
  String imagen;
  String titulo;
  String autor;
  String costo;

  PopularBookModel(
      {Key key, this.imagen, this.titulo, this.autor, this.costo});
}

List<PopularBookModel> obtenerListaDeLibros() {
  return [
    PopularBookModel(
        autor: 'Mike McHargue',
        costo: '\$20',
        imagen: 'assets/images/popular_1.png',
        titulo: 'You\'re A Miracle1'),
    PopularBookModel(
        autor: 'Kerry Johnston',
        costo: '\$40',
        imagen: 'assets/images/popular_2.png',
        titulo: 'Pattern Maker'),
    PopularBookModel(
        autor: 'Mike McHargue',
        costo: '\$20',
        imagen: 'assets/images/popular_1.png',
        titulo: 'You\'re A Miracle1'),
    PopularBookModel(
        autor: 'Kerry Johnston',
        costo: '\$40',
        imagen: 'assets/images/popular_2.png',
        titulo: 'Pattern Maker'),
    PopularBookModel(
        autor: 'Mike McHargue',
        costo: '\$20',
        imagen: 'assets/images/popular_1.png',
        titulo: 'You\'re A Miracle1'),
    PopularBookModel(
        autor: 'Kerry Johnston',
        costo: '\$40',
        imagen: 'assets/images/popular_2.png',
        titulo: 'Pattern Maker'),
  ];
}
