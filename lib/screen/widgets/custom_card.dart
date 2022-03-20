import 'package:course_first_task/themes/all_color.dart';
import 'package:course_first_task/themes/all_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget CustomCard(
    {String? image, String? itremName, String? model, String? price}) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(top:45.0),
      child: Card(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -40,
              left: 23,
              child: Image.asset(image ?? ""),
            ),
            Positioned(
                top: 100,
                left: 25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(itremName??"",style: TextStyle(fontSize:20),),
                    SizedBox(height: AllSize.paddingSizeDefault,),
                    Text(model??"",style: TextStyle(fontSize:20,color: AllColors.gray),),
                    SizedBox(height: AllSize.paddingSizeDefault,),
                    Text(price??"",style: TextStyle(fontSize:20,color: AllColors.blue,fontWeight: FontWeight.bold)),

                  ],
                ))
          ],
        ),
      ),
    ),
  );
}
