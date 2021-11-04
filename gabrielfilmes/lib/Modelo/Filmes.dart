import 'dart:convert';

import 'package:flutter/foundation.dart';

class Filme{

  final int id;
  final String titulo;
  final String linguaOriginal;
  final String dataLancamento;
  final double polulariedade;
  final String posterPath;
  final String sinopse;


  Filme({required int this.id,required String this.titulo,required String this.linguaOriginal, required String this.dataLancamento,required double this.polulariedade, required String this.posterPath,required String this.sinopse});

  factory Filme.fromJson(Map <String,dynamic> json){
   
    return Filme(
      id: json['id'],
      titulo: json['title'],
      linguaOriginal: json['original_language'],
      dataLancamento: json['release_date'],
      polulariedade: json['popularity'],
      posterPath: json['poster_path'],
      sinopse: json['overview']
    );
    
  }



}