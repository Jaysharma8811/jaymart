import 'package:get/get.dart';
import 'package:jay_mart/consts/consts.dart';
import 'package:jay_mart/consts/list.dart';
import 'package:jay_mart/views/categoriesScreen/categories_detail_screen.dart';
import 'package:jay_mart/widget_common/bg_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        appBar: AppBar(
          title: categories.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 200,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8),
            itemBuilder: (context, index) => Column(
              children: [
                Image.asset(
                  categoriesImages[index],
                  height: 123,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                10.heightBox,
                categoriesList[index]
                    .text
                    .color(darkFontGrey)
                    .align(TextAlign.center)
                    .make()
              ],
            ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make().onTap(
              () {
                Get.to(CategoriesDetailScreen(title: categoriesList[index]));
              },
            ),
          ),
        ),
      ),
    );
  }
}
