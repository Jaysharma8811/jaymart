import 'package:get/get.dart';
import 'package:jay_mart/consts/consts.dart';

import '../../consts/list.dart';
import '../../widget_common/app_logo_widget.dart';
import '../../widget_common/bg_widget.dart';
import '../../widget_common/custom_textfield.dart';
import '../../widget_common/our_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isCheck= false;
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
            'Join the $appname'.text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(title: name, hint: nameHint),
                customTextField(
                  title: email,
                  hint: emailHint,
                ),
                customTextField(title: password, hint: passwordHint),
                customTextField(title: retypePassword, hint: passwordHint),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPass.text.make())),
                5.heightBox,

                Row(
                  children: [
                    Checkbox(
                      activeColor: redColor,
                        checkColor: whiteColor,
                        value: isCheck,
                        onChanged: (newValue) {
                          setState(() {
                            isCheck=newValue!;
                          });
                        }),
                    10.widthBox,
                    Expanded(
                      child: RichText(text: const TextSpan(children: [
                        TextSpan(text: 'I agree to the ',style: TextStyle(
                          fontFamily: regular,
                          color: fontGrey,
                        ),),
                        TextSpan(text: termAndCond,style: TextStyle(
                          fontFamily: regular,
                          color: redColor,
                        ),),
                        TextSpan(text: ' & ',style: TextStyle(
                          fontFamily: regular,
                          color: fontGrey,
                        ),),
                        TextSpan(text: privacyPolicy,style: TextStyle(
                          fontFamily: regular,
                          color: redColor,
                        ),),
                      ],),),
                    ),
                  ],
                ),
          ourButton(
          title: signup,
          color: !isCheck?lightGolden:redColor,
          textColor:lightGrey,
          onPress: () {})
        .box
        .width(context.screenWidth - 50)
        .make(),
      10.heightBox,

          GestureDetector(
            onTap: (){
              Get.back();
            },
            child: RichText(text: const TextSpan(children: [
              TextSpan(text: alreadyHaveAccount,style: TextStyle(
                fontFamily: bold,
                color: fontGrey
              ),),
              TextSpan(text: login,style: TextStyle(
                  fontFamily: bold,
                  color: redColor
              ),),
            ],),),
          ),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
