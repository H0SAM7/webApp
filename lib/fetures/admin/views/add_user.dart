import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/core/widgets/custom_button.dart';
import 'package:web_app/core/widgets/custom_text_field.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});
static String id='AddUser';
  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  GlobalKey<FormState> fromKey = GlobalKey<FormState>();


  final TextEditingController nameController = TextEditingController();

  final TextEditingController startDateController = TextEditingController();
  
  final TextEditingController endDateController = TextEditingController();

  
  final TextEditingController doctorNameController = TextEditingController();

  final TextEditingController jobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
              key: fromKey,
          child: Column(
            children: [
              CustomTextField(label: 'الاسم', hint: "ادخل الاسم"),
              CustomTextField(label: "تاريخ اصدار تقرير الاجازة", hint:" تاريخ اصدار تقرير الاجازة"),
              CustomTextField(label: "تبدء من ", hint: "ادخل بداية الاجازة"),
              CustomTextField(label: "وحتي", hint: "ادخل نهاية الاجازة"),
              CustomTextField(label: "اسم الطبيب", hint: "المسمي الوظيفي"),
        SizedBox(height: 30,),
           CustomButton(buttonName: "اضافة طالب",color: blueColor,width: 150,txtcolor: Colors.white,onTap: (){},), 
            ],
          ),
        ),
      ),
    );
  }
}

