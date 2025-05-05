import 'package:flutter/material.dart';
import 'widgets/category_button.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final borderColor = Colors.black.withOpacity(0.2);
    final buttonColor = const Color(0xFFB92A20);
    final selectedColor = const Color(0xFFEF3E36);
    final dividerWidth = 3.0;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppHeader(),

            const SizedBox(height: 30),

            
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 15),
              child: Text(
                'अर्थ तथा योजना समिति',
                style: TextStyle(
                  color: Color(0xFFB92A20),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: borderColor, width: 1),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 60,
                      child: Row(
                        children: [
                          
                          Expanded(
                            flex: 1,
                            child: CategoryButton(
                              icon: Icons.info_outline,
                              label: 'परिचय',
                              color: selectedColor,
                            ),
                          ),
                          VerticalDivider(
                            width: dividerWidth,
                            color: Colors.white,
                            thickness: 1,
                          ),

                          
                          Expanded(
                            flex: 2,
                            child: CategoryButton(
                              icon: Icons.menu,
                              label: 'काम, कर्तव्य र अधिकार',
                              color: buttonColor,
                            ),
                          ),
                          VerticalDivider(
                            width: dividerWidth,
                            color: Colors.white,
                            thickness: 1,
                          ),

                          
                          Expanded(
                            flex: 1,
                            child: CategoryButton(
                              icon: Icons.notifications,
                              label: 'सूचनाहरु',
                              color: buttonColor,
                            ),
                          ),
                          VerticalDivider(
                            width: dividerWidth,
                            color: Colors.white,
                            thickness: 1,
                          ),

                          
                          Expanded(
                            flex: 1,
                            child: CategoryButton(
                              icon: Icons.view_list,
                              label: 'गतिविधिहरु',
                              color: buttonColor,
                            ),
                          ),
                          VerticalDivider(
                            width: dividerWidth,
                            color: Colors.white,
                            thickness: 1,
                          ),

                          
                          Expanded(
                            flex: 1,
                            child: CategoryButton(
                              icon: Icons.download,
                              label: 'प्रकाशनहरु-डाउनलोड्',
                              color: buttonColor,
                            ),
                          ),
                          VerticalDivider(
                            width: dividerWidth,
                            color: Colors.white,
                            thickness: 1,
                          ),

                          
                          Expanded(
                            flex: 1,
                            child: CategoryButton(
                              icon: Icons.calendar_today,
                              label: 'हाजिरी',
                              color: buttonColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 1),
                    SizedBox(
                      height: 120,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'coming soon!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: borderColor, width: 1),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 60, child: const MediaButtonRow()),
                    const SizedBox(height: 1),
                    SizedBox(
                      height: 120,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'coming soon!',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFB92A20),
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              'assets/images/janakpur.png',
              height: 80,
              width: 80,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 10),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'मधेश प्रदेश सभा',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                'जनकपुरधाम, धनुषा, नेपाल',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class MediaButtonRow extends StatelessWidget {
  const MediaButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    final Color buttonColor = const Color(0xFFB92A20);
    final double dividerWidth = 3.0;

    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CategoryButton(
            icon: Icons.audio_file,
            label: 'अडियो',
            color: buttonColor,
          ),
        ),
        VerticalDivider(width: dividerWidth, color: Colors.white, thickness: 1),
        Expanded(
          flex: 1,
          child: CategoryButton(
            icon: Icons.video_library,
            label: 'भिडियो',
            color: buttonColor,
          ),
        ),
        const Expanded(flex: 4, child: SizedBox()),
      ],
    );
  }
}
