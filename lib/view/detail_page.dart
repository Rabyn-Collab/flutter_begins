import 'package:flutter/material.dart';
import 'package:flutterflutter/models/book.dart';


class DetailPage extends StatelessWidget {
  final Book book;
  DetailPage(this.book);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Image.network(book.image, height: 300, width: double.infinity, fit: BoxFit.cover,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(book.label),
                      Column(
                        children: [
                          Text(book.rating),
                          Text(book.genre),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text(book.detail),
                  SizedBox(height: 70,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            backgroundColor: Color(0xFF007084),
                            minimumSize: Size(150, 50)
                          ),
                          onPressed: (){}, child: Text('Read Book')),
                      SizedBox(width: 30,),
                      OutlinedButton(

                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              minimumSize: Size(150, 50)
                          ),
                          onPressed: (){}, child: Text('More Info')),
                    ],
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}







// import 'package:flutter/material.dart';
// import 'package:flutterflutter/models/book.dart';
//
//
// class DetailPage extends StatelessWidget {
//   final Book book;
//   DetailPage(this.book);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: NetworkImage(book.image),fit: BoxFit.fill,
//                     colorFilter: ColorFilter.mode(
//                         Colors.black26,
//                         BlendMode.darken
//                     )
//                   )
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(book.label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
//                   SizedBox(height: 10,),
//                   Text(book.detail, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white)),
//                 ],
//               ),
//             )
//           ],
//         )
//     );
//   }
// }
