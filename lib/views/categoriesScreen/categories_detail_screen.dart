import 'package:get/get.dart';
import 'package:jay_mart/consts/consts.dart';
import 'package:jay_mart/views/categoriesScreen/item_details_screen.dart';
import 'package:jay_mart/widget_common/bg_widget.dart';

class CategoriesDetailScreen extends StatelessWidget {
  const CategoriesDetailScreen({super.key, required this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: whiteColor, //change your color here
        ),
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Baby Clothing "
                        .text
                        .size(12)
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .white
                        .rounded
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .size(110, 70)
                        .make()),
              ),
            ),
            20.heightBox,

            Expanded(
                child: Container(
              color: lightGrey,
              child: GridView.builder(
                physics:const  BouncingScrollPhysics(),
                  itemCount: 6,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 250,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP5,
                            height: 150,
                            width: 200,
                            fit: BoxFit.cover,
                          ),

                          "Laptop 4GB/64GB"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          10.heightBox,
                          "\$600"
                              .text
                              .size(16)
                              .color(redColor)
                              .fontFamily(bold)
                              .make(),
                        ],
                      )
                          .box
                          .margin(const EdgeInsets.all(4))
                          .white
                          .roundedSM.outerShadowSm
                          .padding(const EdgeInsets.all(12))
                          .make().onTap((){
                            Get.to(ItemDetailsScreen(title: 'Dummy Title'));
                  }),),
            ))
          ],
        ),
      ),
    ));
  }
}
