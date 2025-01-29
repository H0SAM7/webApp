import 'package:flutter/material.dart';
import 'package:web_app/fetures/home/widgets/first_section.dart';
import 'package:web_app/fetures/home/widgets/second_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: FirstSection(),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: SecondSection(),
            ),
          ],
        ),
      ),
    );
  }
}

