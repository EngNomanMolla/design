import 'package:course_first_task/themes/all_color.dart';
import 'package:course_first_task/themes/all_images.dart';
import 'package:course_first_task/themes/all_text.dart';
import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (_,index){
        return Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 10.0),
          child: Card(
            child: ListTile(leading: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image.asset(AllImages.watchImage),
            ),
            title: Text(AllText.applewatch,style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text(AllText.serics_color),
              trailing: Text("\$ 500",style: TextStyle(fontWeight: FontWeight.bold,color: AllColors.blue),),
            ),
          ),
        );
      }),
    );
  }
}
