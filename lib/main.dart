import 'package:flutter/material.dart';
import 'package:flutterflutter/view/home_page.dart';
import 'package:get/get.dart';


void main (){

  runApp(Home());

}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
         fontFamily: 'RaleWay'
       ).copyWith(
          scaffoldBackgroundColor:  Color(0xFFF2F5F9),
         appBarTheme: AppBarTheme(
           backgroundColor:  Color(0xFFF2F5F9)
         )
       ),
      home: HomePage(),

    );
  }
}








