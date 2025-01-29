import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/core/utils/styles.dart';
import 'package:web_app/core/widgets/custom_button.dart';
import 'package:web_app/core/widgets/custom_text_field.dart';

class SecondSection extends StatelessWidget {
  const SecondSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'الإجازات المرضية',
          style: AppStyles.styleMedium18(context).copyWith(fontSize: 40),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          ' خدمة الاستعلام عن الإجازات المرضية تتيح لك الاستعلام عن حالة طلبك للإجازة ويمكنك طباعتها عن طريق تطبيق صحتي',
          style: AppStyles.styleRegular16(context),
        ),
        SizedBox(
          height: 30,
        ),
        CustomTextField(label: 'رمز الخدمة', hint: "رمز الخدمة"),
         CustomTextField(label:  " رقم الهوية / البطاقة", hint: " رقم الهوية / البطاقة"),
   SizedBox(
          height: 20,
        ),
        CustomButton(buttonName: 'استعلام',color: blueColor,width: 150,txtcolor: Colors.white,) ,
         SizedBox(
          height: 15,
        ),
        CustomButton(buttonName: 'رجوع للاستعلامات',color: blueColor,width: 150,txtcolor: Colors.white,) ,
      ],
    );
  }
}
