// import 'dart:convert';
// import 'package:flutter/material.dart';
// // ignore: unused_import
// import 'package:http/http.dart' as http;
// import '../modal/movies.dart';
// import '../widget/movie_widget.dart';

// void main(List<String> args) {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List<Movie> _movies = [];
//   void initState() {
//     super.initState();
//     _populateAllMovies();
//   }

//   void _populateAllMovies() async {
//     final movies = await _fetchAllMovies();
//     setState(() {
//       _movies = movies;
//     });
//   }

//   Future<List<Movie>> _fetchAllMovies() async {
//     final endpoint = "https://www.omdbapi.com/?s=Batman&page=2&apikey=564727fa";
//     final Uri url = Uri.parse(endpoint);
//     final http.Response response = await http.get(url);

//     if (response.statusCode == 200) {
//       final result = jsonDecode(response.body);
//       final list = result["Search"];
//       return list.map((movie) => Movie.fromJson(movie)).toList();
//     } else {
//       throw Exception("Failed to load movies!");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Movies Api",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Movies"),
//         ),
//         body: MoviesWidget(movies: _movies),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:movie_api/Dashboard/dash2_board.dart';
import 'package:movie_api/modal/api_services.dart';

void main(List<String> args) {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}