import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/core/utils/styles.dart';
import 'package:web_app/core/widgets/custom_button.dart';
import 'package:web_app/core/widgets/custom_text_field.dart';

class SecondSection extends StatefulWidget {
  const SecondSection({super.key});

  @override
  State<SecondSection> createState() => _SecondSectionState();
}

class _SecondSectionState extends State<SecondSection> {
  final TextEditingController idController = TextEditingController();

  bool isLogin = false;

  final List<Map<String, String>> personDetails = [
    {
      'الاسم': 'عبدالرحمن فايز عبدالرحمن باراس',
      'جهة العمل': 'طالب',
      'id': '2214884773',
      'تاريخ الميلاد': '2005/1/4',
      'الوظيفة': 'طالب جامعي',
      'الجنسية': 'اليمن',
      'رقم الجوال': '0538154007',
      'تاريخ الاجازة': '2024/12/7',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'الإجازات المرضية',
              style: AppStyles.styleMedium18(context).copyWith(fontSize: 40),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Text(
              'خدمة الاستعلام عن الإجازات المرضية تتيح لك الاستعلام عن حالة طلبك للإجازة ويمكنك طباعتها عن طريق تطبيق صحتي',
              style: AppStyles.styleRegular16(context),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            CustomTextField(label: 'رمز الخدمة', hint: "رمز الخدمة"),
            const SizedBox(height: 20),
            CustomTextField(
              label: "رقم الهوية / البطاقة",
              hint: "رقم الهوية / البطاقة",
              controller: idController,
            ),
            const SizedBox(height: 20),
            isLogin
                ? Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              buildInfoRow(
                                  ':الاسم', 'جمانه عبد المنعم حماد الحارثي'),
                              buildInfoRow(":تاريخ إصدار تقرير الإجازة",
                                  '2025-01-29'),
                              buildInfoRow(':تبدأ من', '2025-01-29'),
                              buildInfoRow(":وحتي", '2025-01-29'),
                              buildInfoRow(":المدة بالايام", '1'),
                              buildInfoRow(":أسم الطبيب", 'محمد فيصل غازي'),
                              buildInfoRow(':المسمي الوظيفي', 'طبيب عام'),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : SizedBox(),
            CustomButton(
              buttonName: 'استعلام',
              color: blueColor,
              width: 150,
              txtcolor: Colors.white,
              onTap: () {
                // Check if the value exists in the map
                if (personDetails
                    .any((person) => person['id'] == idController.text)) {
                  print('القيمة موجودة في الخريطة.');
                  setState(() {
                    isLogin = true;
                  });
                } else {
                  print('القيمة غير موجودة في الخريطة.');
                  setState(() {
                    isLogin = false;
                  });
                }
              },
            ),
            const SizedBox(height: 15),
            CustomButton(
              buttonName: 'رجوع للاستعلامات',
              color: blueColor,
              width: 150,
              txtcolor: Colors.white,
              onTap: () {
                setState(() {
                  isLogin = false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end, // Keep everything aligned to the right
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 130.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 130.0),
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
