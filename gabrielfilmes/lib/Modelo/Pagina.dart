import 'Filmes.dart';
class Pagina{

  final int id;
  final int pagina;
  final List<Filme> filmes;


  Pagina(this.id,this.pagina,this.filmes);

  Pagina.fromJson(Map <String,dynamic> json): 
    id = json['id'],
    pagina = json['page'],
    filmes = json['results'];


  Map<String, dynamic> toJson() => {
    'id': id,
    'page':pagina,
    'filmes':filmes
  };
}