import 'package:flutter/material.dart';

import '../modal/movies.dart';
class MoviesWidget extends StatelessWidget {


  final List<Movie> movies;

   MoviesWidget({ required this.movies});
  @override
  Widget build(BuildContext context) {

  return ListView.builder(
    itemCount: movies.length,
    itemBuilder: ((context, index) {
      final movie = movies[index];
      return ListTile(
        title: Row(children:[
          SizedBox(
            child:ClipRRect(
             child:Image.network(movie.poster),
             borderRadius: BorderRadius.circular(10),
             ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movie.title),
                  SizedBox(height: 14),
                  Text(movie.year),
                ],
              ),
            ),
          ),
       ]),
      );
    })
    );
  }
}