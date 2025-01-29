import 'package:flutter/material.dart';
import 'package:web_app/fetures/home/widgets/first_section.dart';
import 'package:web_app/fetures/home/widgets/second_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Use MediaQuery to get screen size and orientation
          final screenWidth = MediaQuery.of(context).size.width;
          final screenHeight = MediaQuery.of(context).size.height;
          final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
      
          // Define breakpoints for responsiveness
          const mobileBreakpoint = 600.0;
          const tabletBreakpoint = 1024.0;
      
          // Determine layout based on screen width
          if (screenWidth < mobileBreakpoint) {
            // Mobile layout
            return CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      Expanded(
                        child: FirstSection(),
                      ),
                      const SizedBox(
                        height: 20, // Adjust spacing for mobile
                      ),
                      Expanded(
                        child: SecondSection(),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else if (screenWidth < tabletBreakpoint) {
            // Tablet layout
            return CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      Expanded(
                        child: FirstSection(),
                      ),
                      const SizedBox(
                        height: 40, // Adjust spacing for tablet
                      ),
                      Expanded(
                        child: SecondSection(),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            // Desktop layout
            return CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      Expanded(
                        child: FirstSection(),
                      ),
                      const SizedBox(
                        width: 50, // Adjust spacing for desktop
                      ),
                      Expanded(
                        child: SecondSection(),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}