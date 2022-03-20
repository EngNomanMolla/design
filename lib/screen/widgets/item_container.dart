import 'package:course_first_task/themes/all_color.dart';
import 'package:course_first_task/themes/all_size.dart';
import 'package:flutter/cupertino.dart';

Widget ItemContainer({String ?catagory}){

  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: Container(
      decoration: BoxDecoration(
        color: AllColors.gray,
        borderRadius: BorderRadius.circular(AllSize.paddingSizeLarge)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 14.0,right: 14.0),
        child: Align(child: Text(catagory??"",style: TextStyle(fontSize: AllSize.largeSize),),alignment: Alignment.center,),
      ),
    ),
  );

}