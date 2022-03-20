import 'package:course_first_task/themes/all_color.dart';
import 'package:course_first_task/themes/all_size.dart';
import 'package:flutter/cupertino.dart';

Widget CustomContainer({Color? color,String ?title,Image ?image}){
  return Container(
    height: 300,
    width: 300,

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(AllSize.paddingSizeDefault),
      color: color,

    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0,top: 12),
          child: Text(title??"",style: TextStyle(fontSize: 24,color: AllColors.white),),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: Align(child: image,alignment: Alignment.bottomRight,),
        ),

      ],
    ),
  );
}