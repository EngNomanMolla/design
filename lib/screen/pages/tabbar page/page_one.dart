import 'package:course_first_task/screen/widgets/custom_card.dart';
import 'package:course_first_task/themes/all_images.dart';
import 'package:course_first_task/themes/all_text.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: 8,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  mainAxisSpacing: 45,
                  childAspectRatio: (500 / 800),
                ),
            itemBuilder: (_, index) {
              return CustomCard(
                  image: AllImages.watchcopyImage,
                  itremName: AllText.applewatch,
                  model: AllText.serics_color,
                  price: "\$ 333");
            }),
      ),
    );
  }
}
