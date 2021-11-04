class Info{

  String apiChave = "ea304227246815763c11d8901d0be249";
  int nPaginas = 1;
  String linguagem = "pt-BR";
  String baseUrl = "https://api.themoviedb.org/3/movie/76341?api_key=<<api_key>>&language=pt-BR";

  
  String comprartilharURLbase(String urlSolicitacao,String chaveAPI,String lingua,int pagina){
      return "https://api.themoviedb.org/3/movie/${urlSolicitacao}?api_key=${chaveAPI}&language=${lingua}&page=${pagina}";
  }

  String urlFoto(String tamanho,String urlFoto){
    return "https://image.tmdb.org/t/p/w${tamanho}/${urlFoto}";
  }

}