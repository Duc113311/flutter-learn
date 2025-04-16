import 'package:flutter/material.dart';
import 'package:my_flutter_app/presentation/widgets/app_header.dart';
import '../home/home_screen.dart';
import '../weather/weather_screen.dart';
import '../calendar/calendar_screen.dart';
import '../translate/translate_screen.dart';
import '../scan/scan_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    WeatherScreen(),
    CalendarScreen(),
    TranslateScreen(),
    ScanScreen(),
  ];

  final List<String> _titles = [
    'Home',
    'Weather',
    'Calendar',
    'Translate',
    'Scan',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        onMenuTap: () {
          // tuỳ xử lý: mở drawer, mở menu, in log...
          print('Menu icon tapped');
        },
      ),
      endDrawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // 👈 bỏ bo tròn
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 80,
              child: DrawerHeader(
                decoration: const BoxDecoration(color: Colors.blue),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo_son_tung.jpg',
                        height: 32,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'MTP - Entertainment',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('Ngôn ngữ'),
              onTap: () {
                // TODO: handle language
              },
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: const Text('Chế độ tối'),
              onTap: () {
                // TODO: toggle theme
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Đăng xuất'),
              onTap: () {
                // TODO: handle logout
              },
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Weather'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Calendar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.translate), label: 'Translate'),
          BottomNavigationBarItem(
              icon: Icon(Icons.document_scanner), label: 'Scan'),
        ],
      ),
    );
  }
}
