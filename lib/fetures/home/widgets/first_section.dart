import 'package:flutter/material.dart';
import 'package:web_app/core/utils/assets.dart';
import 'package:web_app/core/widgets/custom_button.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          buttonName: "تسجيل دخول",
          color: Color(0xff346cb4),
          width: 150,
          txtcolor: Colors.white,
        ),
        CustomButton(
          buttonName: "انشاء حساب",
          color: Colors.white,
          width: 150,
          txtcolor: Color(0xff346cb4),
        ),
        SizedBox(
          width: 200,
        ),
        CustomButton(
          buttonName: "الاستعلامات ",
          color: Colors.white,
          width: 150,
          txtcolor: Color(0xff346cb4),
        ),
        CustomButton(
          buttonName: "الخدمات ",
          color: Colors.white,
          width: 150,
          txtcolor: Color(0xff346cb4),
        ),
        Image.asset(Assets.imagesLogo)
      ],
    );
  }
}
