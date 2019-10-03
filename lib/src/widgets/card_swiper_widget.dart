import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:peliculas/src/models/pelicula_model.dart';

class CardSwiper extends StatelessWidget {
  final List<Pelicula> peliculas;

  CardSwiper({@required this.peliculas});

  @override
  Widget build(BuildContext context) {

    final _screeSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 15.0),
      child: Swiper(
        itemWidth: _screeSize.width * 0.65,
        itemHeight: _screeSize.height * 0.48,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              fadeInCurve: Curves.bounceIn,
              image: NetworkImage(peliculas[index].getPosterImg()),
              placeholder: AssetImage('assets/loading.gif'),
              fit: BoxFit.cover,
          ));
        },
        itemCount: peliculas.length,
        layout: SwiperLayout.STACK,
      ),
    );
  }
}
