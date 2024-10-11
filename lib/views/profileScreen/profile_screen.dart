import 'package:get/get_common/get_reset.dart';
import 'package:jay_mart/consts/consts.dart';
import 'package:jay_mart/consts/list.dart';
import 'package:jay_mart/views/profileScreen/components/details_card.dart';
import 'package:jay_mart/widget_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        body: SafeArea(
          child: Column(

            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: const Icon(
                    Icons.edit,
                    color: whiteColor,
                  ).onTap(() {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(

                  children: [
                    Image.asset(
                      imgProfile2,
                      width: 90,

                    ).box.roundedFull.clip(Clip.antiAlias).make(),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          "dummy name".text.white.fontFamily(semibold).make(),
                          "dummy@gmail.com".text.white.make(),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                        color: whiteColor,
                      )),
                      onPressed: () {},
                      child: "LogOut".text.fontFamily(semibold).white.make(),
                    ),
                  ],
                ),
              ),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(context.screenWidth / 3.4, "00", "in your cart"),
                  detailsCard(
                      context.screenWidth / 3.4, "37", "in your wishlist"),
                  detailsCard(context.screenWidth / 3.4, "67", " your orders"),
                ],
              ),
             
              ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => ListTile(
                            leading: Image.asset(
                              profileButtonsIconList[index],
                              width: 24,
                              fit: BoxFit.cover,
                            ),
                            title: profileButtonsList[index]
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                          ),
                      separatorBuilder: (context, index) => const Divider(
                            color: lightGrey,
                          ),
                      itemCount: profileButtonsList.length)
                  .box
                  .rounded
                  .white
                  .margin(const EdgeInsets.all(12))
                  .padding(const EdgeInsets.symmetric(horizontal: 16))
                  .shadowSm
                  .make()
                  .box
                  .color(redColor)
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
