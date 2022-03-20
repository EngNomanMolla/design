import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomTab({String ?tabname, Icon ?icon}){
  return Tab(
    icon: icon,
    text: tabname,
  );
}