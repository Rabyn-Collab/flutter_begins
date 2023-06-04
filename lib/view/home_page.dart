import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



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
            )
          ],
        )

    );
  }
}
