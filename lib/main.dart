import 'package:course_first_task/screen/pages/add.dart';
import 'package:course_first_task/screen/pages/home.dart';
import 'package:course_first_task/screen/widgets/custom_card.dart';
import 'package:course_first_task/screen/widgets/custom_container.dart';
import 'package:course_first_task/screen/widgets/item_container.dart';
import 'package:course_first_task/themes/all_color.dart';
import 'package:course_first_task/themes/all_images.dart';
import 'package:course_first_task/themes/all_size.dart';
import 'package:course_first_task/themes/all_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index=0;
  var pages=[HomePage(),AddPage(),];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
         bottomNavigationBar: BottomNavigationBar(
           onTap: (i){
             setState(() {
               index=i;
             });
           },
           currentIndex: index,
           unselectedItemColor: AllColors.gray,
           selectedItemColor: AllColors.orange,
           items: [
             BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
             BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label: "Add"),
             BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),
             BottomNavigationBarItem(icon: Icon(Icons.person),label: "Home"),
           ],

         ),

         body:pages[index],
       ),


    );
  }
}
