import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header section
            Container(
              color: const Color(0xFFB92A20),
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/janakpur.png',
                    height: 80,
                    width: 80,
                    fit: BoxFit.contain,
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
            ),

            
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                'assets/images/janakpur.png',
                fit: BoxFit.cover,
              ),
            ),

            
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15),
                child: GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: 1.1,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: const [
                    MenuButton(icon: Icons.announcement, title: 'सूचना'),
                    MenuButton(icon: Icons.group, title: 'समिति'),
                    MenuButton(icon: Icons.gavel, title: 'विधेयक'),
                    MenuButton(icon: Icons.calendar_today, title: 'प्रदेश सभा'),
                    MenuButton(icon: Icons.menu_book,title: 'प्रदेश सभा सदस्य',),
                    MenuButton(icon: Icons.people, title: 'प्रदेश सभा सचिवालय'),
                    MenuButton(icon: Icons.tv, title: 'सभा बैठक'),
                    MenuButton(icon: Icons.podcasts, title: 'एन नियम'),
                    MenuButton(icon: Icons.insert_drive_file,title: 'प्रतिवेदन'),
                    MenuButton(icon: Icons.card_membership, title: 'परिचयपत्र'),
                    MenuButton(icon: Icons.phone, title: 'सम्पर्क'),
                    MenuButton(icon: Icons.info, title: 'हाम्रो बारेमा'),
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


class MenuButton extends StatelessWidget {
  final IconData icon;
  final String title;

  const MenuButton({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: const Color(0xFFB92A20), size: 32),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
