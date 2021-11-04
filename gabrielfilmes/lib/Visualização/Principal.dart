
import 'package:flutter/material.dart';
import 'package:gabrielfilmes/Controle/ControleDeRequesicao.dart';
import 'package:gabrielfilmes/Modelo/Filmes.dart';
import 'package:gabrielfilmes/Utilit%C3%A1rios/Info.dart';
import 'package:gabrielfilmes/Visualização/Componentes/Cards.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

List<Filme> filmes = [];


class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  //Instanciando minhas classes
  var cards = Cards();
  
  void pegarLista() async{
  try{
    List<Filme> dadosApi = await ApiControle().pegarFilmes();
    setState((){
      filmes = dadosApi;
    });
  }catch(error){
    throw error;
  }
}

  @override
  void initState() {
    super.initState();
    pegarLista();
  }
  
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("GabrielFlix"),),),

      body: Center(
        child: ListView.builder(
          itemCount: filmes.length,
          
          itemBuilder: (context,indice){
            
            if(filmes.length > 0){
            
              return cards.filmeCard(filmes[indice].titulo, filmes[indice].dataLancamento, filmes[indice].sinopse, filmes[indice].posterPath);
             
            }else{
                 return cards.cardVazio();
            }
          })
      ),
    );
    
  }
}