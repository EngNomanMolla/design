import 'package:course_first_task/screen/widgets/custom_container.dart';
import 'package:course_first_task/screen/widgets/item_container.dart';
import 'package:course_first_task/themes/all_color.dart';
import 'package:course_first_task/themes/all_images.dart';
import 'package:course_first_task/themes/all_size.dart';
import 'package:course_first_task/themes/all_text.dart';
import 'package:flutter/material.dart';
class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<String> item = ["Food", "Electronics", "Groceries", "Dress"];
@override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       child: Padding(
         padding: const EdgeInsets.only(left: 12.0, top: 50),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               AllText.name,
               style: TextStyle(fontSize: AllSize.overextraSize),
             ),
             Text(
               AllText.subtitle,
               style: TextStyle(fontSize: AllSize.delaultSize),
             ),
             SizedBox(height: AllSize.sizedBoxSizedExtraLarge),
             Container(
               height: 150,
               child: ListView(
                 scrollDirection: Axis.horizontal,
                 children: [
                   CustomContainer(
                       color: AllColors.orange,
                       title: AllText.freetext,
                       image: Image.asset(
                         AllImages.foodImage,
                         height: 80,
                         width: 80,
                       )),
                   SizedBox(
                     width: AllSize.sizedBoxSizedDefault,
                   ),
                   CustomContainer(
                       color: AllColors.blue,
                       title: AllText.freetext,
                       image: Image.asset(
                         AllImages.foodImage,
                         height: 80,
                         width: 80,
                       )),
                 ],
               ),
             ),
             SizedBox(height: AllSize.sizedBoxSizedExtraLarge),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   AllText.topcatagory,
                   style: TextStyle(fontSize: AllSize.largeSize),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(
                       right: AllSize.paddingSizeMiniSmall),
                   child: Text(
                     AllText.viewall,
                     style: TextStyle(color: AllColors.orange),
                   ),
                 ),
               ],
             ),
             SizedBox(
               height: AllSize.sizedBoxSizedExtraLarge,
             ),
             Container(
               height: 50,
               child: ListView.builder(
                 itemCount: item.length,
                 itemBuilder: (_, index) {
                   return ItemContainer(catagory: item[index]);
                 },
                 scrollDirection: Axis.horizontal,
               ),
             ),
             SizedBox(
               height: AllSize.sizedBoxSizedExtraLarge,
             ),

           ],
         ),
       ),
     ),
   );
  }
}
