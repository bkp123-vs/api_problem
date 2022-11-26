// import 'package:flutter/material.dart';
// import '../modal/api_services.dart';
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: ApiService().getUserData(),
//         builder: (context, snapshot) {
//             if(snapshot.hasData){
//               return Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                ...snapshot.data!.map((e) => ListTile(
//                 title:Text(e.email),
//                 trailing: Text(e.id.toString()),
//                 ) ).toList(),
//                 ],
//               );
//             }
//             else if(snapshot.hasError){
//               return Text(snapshot.error.toString());
//             }
//            return Center(
//             child: CircularProgressIndicator.adaptive(),
//            );
//         }
//         ),
      
//     );

//   }
// }