import 'package:get/get.dart';
import 'package:jay_mart/consts/consts.dart';
import 'package:jay_mart/consts/list.dart';
import 'package:jay_mart/widget_common/home_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: whiteColor,
                hintText: searchAnything,
                hintStyle: TextStyle(color: textfieldGrey),
              ),
            ),
          ),
         Expanded(
           child: SingleChildScrollView(
             physics:const  BouncingScrollPhysics(),
             child: Column(children: [
               VxSwiper.builder(
                   aspectRatio: 16/9,
                   autoPlay: true,
                   height: 150,
                   itemCount: sliderList.length,
                   itemBuilder: (context, index) => Image.asset(
                     sliderList[index],
                     fit: BoxFit.fill,
                   )
                       .box
                       .rounded
                       .clip(Clip.antiAlias)
                       .margin(const EdgeInsets.symmetric(horizontal: 8))
                       .make()),
               10.heightBox,
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: List.generate(2, (index)=>homeButtons(
                   height:context.screenHeight*0.15,
                   width:context.screenWidth/2.5,
                   icon:index==0?icTodaysDeal:icFlashDeal,
                   title:index==0?todayDeal:flashSale,
                 )),
               ),
               10.heightBox,
               VxSwiper.builder(
                   aspectRatio: 16/9,
                   autoPlay: true,
                   height: 150,
                   itemCount: secondSliderList.length,
                   itemBuilder: (context, index) => Image.asset(
                     secondSliderList[index],
                     fit: BoxFit.fill,
                   )
                       .box
                       .rounded
                       .clip(Clip.antiAlias)
                       .margin(const EdgeInsets.symmetric(horizontal: 8))
                       .make()),
               10.heightBox,
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: List.generate(3, (index)=>homeButtons(
                   height:context.screenHeight*0.15,
                   width:context.screenWidth/3.5,
                   icon:index==0?icTopCategories:index==1?icBrands:icTopSeller ,
                   title:index==0?topCategories:index==1?brand:topSellers,
                 )),
               ),
               10.heightBox,
               Align(alignment: Alignment.topLeft,
                 child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),),
             ],),
           ),
         )
        ],
      )),
    );
  }
}
