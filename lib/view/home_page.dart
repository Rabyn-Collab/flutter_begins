import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterflutter/models/book.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // drawer: Drawer(),
      appBar: AppBar(
        title: Text('Hi John'),
        // centerTitle: true,
        foregroundColor: Colors.black,
        actions: [
          Icon(CupertinoIcons.search),
         const SizedBox(width: 20,),
          Icon(CupertinoIcons.bell_fill),
         const SizedBox(width: 10,),
        ],
        elevation: 0,
        // backgroundColor: Colors.orange.shade400,
     //  backgroundColor: Color(0xFFF2F5F9),
     //   backgroundColor: Color.fromRGBO(200, 150, 170, 0.7),
      ),
        body:  Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.cyanAccent,
              child: Image.asset('assets/sample.jpg', fit: BoxFit.cover,),
            ),
            SizedBox(height: 15,),
            Container(
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: books.length,
                  itemBuilder: (context, index){
                  final book = books[index];
                  return Container(
                    margin: EdgeInsets.only(right: 5),
                      width: 370,
                      height: 250,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Card(
                              child: Container(
                                height: 200,
                                width:370,
                                child: Row(
                                  children: [
                                    Expanded(child: Container()),
                                    SizedBox(width: 50,),
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 7),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(book.label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                                            Text(book.detail,
                                              style: TextStyle(color: Colors.blueGrey),
                                              maxLines: 4,overflow: TextOverflow.ellipsis,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(book.rating),
                                                Text(book.genre),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )

                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(book.image,
                                height: 250,
                                width: 125,
                                fit: BoxFit.cover,),
                            ),
                          ),
                        ],
                      ));
                  }
              )
            )
          ],
        )

    );
  }
}
