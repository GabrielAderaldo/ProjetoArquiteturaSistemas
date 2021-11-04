import 'dart:convert';
import 'package:gabrielfilmes/Utilitários/Info.dart';
import 'package:gabrielfilmes/Modelo/Filmes.dart';
import 'package:http/http.dart' as http;


class ApiControle{


  
  Info infomacoes = Info();


  Future <List<Filme>> pegarFilmes() async {

    String url = infomacoes.comprartilharURLbase("upcoming","ea304227246815763c11d8901d0be249","pt-BR",1);
    final urlConvertida = Uri.parse(url);
    final resposta = await http.get(urlConvertida);

    List<Filme> filmes = [];

    if(resposta.statusCode == 200){
      
      var corpo = jsonDecode(resposta.body);
      var corpoResposta = corpo['results'];
      
      for(var filme in corpoResposta) {
       Filme retorno = Filme.fromJson(filme);
       filmes.add(retorno);
      }
      
      return filmes;

    }else if(resposta.statusCode == 401){
      throw "Chave invalida";
    }else{
      throw "Erro inesperado";
    }

  }


}