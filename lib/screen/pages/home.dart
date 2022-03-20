import 'package:course_first_task/screen/pages/chat.dart';
import 'package:course_first_task/screen/widgets/custom_card.dart';
import 'package:course_first_task/screen/widgets/custom_container.dart';
import 'package:course_first_task/screen/widgets/item_container.dart';
import 'package:course_first_task/themes/all_color.dart';
import 'package:course_first_task/themes/all_images.dart';
import 'package:course_first_task/themes/all_size.dart';
import 'package:course_first_task/themes/all_text.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> item = ["Food", "Electronics", "Groceries", "Dress"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context,isScroll){
            return [
            SliverAppBar(
              collapsedHeight: 450,
              expandedHeight: 450,
              flexibleSpace: ChatPage()
            )
            ];
          },
          body:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 45,
                  childAspectRatio: (500 / 800),
                ),
                itemCount: 10,
                itemBuilder: (_, index) {
                  return CustomCard(
                      image: AllImages.watchcopyImage,
                      itremName: AllText.applewatch,
                      model: AllText.serics_color,
                      price: "\$ 333");
                }),
          ),
        ),
      ),
    );
  }
}

