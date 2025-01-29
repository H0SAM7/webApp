import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/core/widgets/custom_button.dart';

class AdminView extends StatelessWidget {
  const AdminView({super.key});
static String  id='AdminView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomButton(buttonName: "اضافة طالب",color: blueColor,width: 150,txtcolor: Colors.white,onTap: (){},),
          const  SizedBox(height: 30,),
             CustomButton(buttonName: "تعديل بيانات طالب",color: blueColor,width: 150,txtcolor: Colors.white,),
          ],
        ),
      ),
    );
  }
}