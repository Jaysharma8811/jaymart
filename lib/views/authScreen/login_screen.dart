import 'package:get/get.dart';
import 'package:jay_mart/consts/list.dart';
import 'package:jay_mart/views/authScreen/signup_screen.dart';
import 'package:jay_mart/views/homeScreen/home.dart';
import 'package:jay_mart/widget_common/app_logo_widget.dart';
import 'package:jay_mart/widget_common/bg_widget.dart';
import 'package:jay_mart/widget_common/custom_textfield.dart';
import 'package:jay_mart/widget_common/our_button.dart';

import '../../consts/consts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            'Log in to $appname'.text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(
                  title: email,
                  hint: emailHint,
                ),
                customTextField(title: password, hint: passwordHint),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPass.text.make())),
                5.heightBox,
                ourButton(
                        title: login,
                        color: redColor,
                        textColor: whiteColor,
                        onPress: () {Get.to(const Home());})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(
                    title: signup,
                    color: lightGolden,
                    textColor: redColor,
                    onPress: () {
                      Get.to(()=>const SignUpScreen());
                    })
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                loginwith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: lightGrey,
                      radius: 25,
                    child: Image.asset(socialIconList[index],width: 30,),
                ),
                  )),),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70).shadowSm
                .make(),

          ],
        ),
      ),
    ));
  }
}
