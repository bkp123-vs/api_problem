import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  //const DetailScreen({Key? key}) : super(key: key);

  final String title;
  final String descr;

 DetailScreen(this.title, this.descr);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 20,
                ),
                Text(
                  descr,
                  style: const TextStyle(
                    fontSize: 19,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
