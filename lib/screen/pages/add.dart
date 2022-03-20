import 'package:course_first_task/screen/pages/tabbar%20page/page_one.dart';
import 'package:course_first_task/screen/pages/tabbar%20page/page_two.dart';
import 'package:course_first_task/screen/widgets/custom_tab.dart';
import 'package:course_first_task/themes/all_color.dart';
import 'package:course_first_task/themes/all_text.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(

        appBar: AppBar(
          title: Text(
            AllText.titileText,
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
            indicatorColor: AllColors.gray,
            labelColor: Colors.black,
            indicatorWeight: 3.0,
            tabs: [

            CustomTab(tabname:AllText.firsttabname,icon: Icon(Icons.add_shopping_cart,color: Colors.black,) ),

              CustomTab(tabname:AllText.secondtabname,icon: Icon(Icons.favorite,color: Colors.black,) ),

          ],),

          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            FirstPage(),
            SecondPage(),
          ],
        ),
      ),
    );
  }
}
