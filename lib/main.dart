import 'package:flutter/material.dart';
import 'package:project_app/resources/views/home/home_screen.dart';
import 'resources/utils/constants.dart';
import 'resources/views/account/login_screen.dart';
import 'resources/views/account/register_screen.dart';

import 'package:project_app/routes.dart';

import 'package:project_app/resources/views/product/product_detail_page.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'APP DEMO TÂN',
     /* theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
        appBarTheme: const AppBarTheme(
          backgroundColor: bgColor,
          
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),*/
      home:  HomeScreen(),
      //initialRoute: DetailsScreen.routeName,
      routes: routes,
      
    );
  }
}