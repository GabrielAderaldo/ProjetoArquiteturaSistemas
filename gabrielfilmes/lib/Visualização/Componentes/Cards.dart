import 'package:flutter/material.dart';
import 'package:gabrielfilmes/Utilitários/Info.dart';

class Cards{

  Card cardVazio(){
    return Card(
      child:Center(
        child: Text("Falha ao carregar as informações"),
       ),
      );
  }

   Card filmeCard(String titulo,String dataLancamento, String sinopse, String imgUrl){
    return Card(
                
                margin: EdgeInsets.all(20),
                shadowColor: Colors.blueGrey.shade900,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: new Text("Nome: ${titulo}"),
                      subtitle: new Text("Data de lançamento: ${dataLancamento}"),
                    ),
                    Padding(padding: 
                      const EdgeInsets.all(16.0),
                      child: Text("Sinopse curta: ${sinopse}"),
                    
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: new Image(
                      fit: BoxFit.contain,
                      errorBuilder:(BuildContext context, Object exception, StackTrace? stackTrace){
                        return Text("Imagem não conseguiu carregar...");
                      },
                      
                      image:
                      NetworkImage(Info().urlFoto("200",imgUrl)),
                      ),
                        )
                  ],
                ),
              );
  }


}