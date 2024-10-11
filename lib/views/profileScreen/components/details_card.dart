import 'package:jay_mart/consts/consts.dart';

Widget detailsCard(width,String?count,String? title){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.color(darkFontGrey).fontFamily(bold).make(),
      5.heightBox,
      title!.text.color(darkFontGrey).make(),
    ],

  ).box.white.roundedSM.width(width).height(70).padding(const EdgeInsets.all(4)).make();

}