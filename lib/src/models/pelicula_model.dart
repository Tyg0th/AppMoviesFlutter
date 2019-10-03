class Peliculas {
  List<Pelicula> items = new List();

  Peliculas();

  Peliculas.fromJsonList( List<dynamic> jsonList ){
    if(jsonList == null) return;

    for( var item in jsonList){
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add( pelicula );
    }

  }
}

class Pelicula {
  double popularity;
  int voteCount;
  bool video;
  String posterPath;
  int id;
  bool adult;
  String backdropPath;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String title;
  double voteAverage;
  String overview;
  String releaseDate;

  Pelicula({
    this.popularity,
    this.voteCount,
    this.video,
    this.posterPath,
    this.id,
    this.adult,
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.genreIds,
    this.title,
    this.voteAverage,
    this.overview,
    this.releaseDate,
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    popularity = json['popularity'] / 1;
    voteCount = json['vote_count'];
    video = json['video'];
    posterPath = json['poster_path'];
    id = json['id'];
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    genreIds = json['genre_ids'].cast<int>();
    title = json['title'];
    voteAverage = json['vote_average'] / 1;
    overview = json['overview'];
    releaseDate = json['release_date'];
  }

  getPosterImg(){
    if(posterPath == null){
      return 'data:image/png;base64,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';
    }
    return 'https://image.tmdb.org/t/p/w500/$posterPath';
  }

}
