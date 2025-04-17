import 'package:flutter/material.dart';
import 'package:my_flutter_app/presentation/widgets/form/card_section.dart';
import 'package:my_flutter_app/presentation/widgets/home/title-coin.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final dateStr = "${now.day}/${now.month}/${now.year}";

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleCoin(
            title: 'Literature',
            description: 'Analysis of literary works\n(stories, poems, plays)s',
            buttonText: "Try now",
            imageAsset: 'assets/images/logo_literature.png',
            onTap: () {
              // TODO: Navigate or action
            },
          ),
          // 📅 Lịch hôm nay
          CardSection(
            icon: Icons.calendar_today,
            iconColor: Colors.blue,
            title: 'Hôm nay là',
            subtitle: dateStr,
          ),

          const SizedBox(height: 16),

          // 🌤️ Thời tiết hôm nay
          CardSection(
            icon: Icons.cloud,
            iconColor: Colors.orange,
            title: 'Thời tiết hiện tại',
            subtitle: '30°C · Nắng nhẹ',
            trailing: IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                // TODO: reload weather
              },
            ),
          ),

          const SizedBox(height: 16),

          // 🔍 Mục thứ 3 (ví dụ: shortcut tới Scan)
          CardSection(
            icon: Icons.qr_code_scanner,
            iconColor: Colors.green,
            title: 'Quét tài liệu nhanh',
            subtitle: 'Chạm để mở camera',
            onTap: () {
              // TODO: chuyển sang màn Scan
            },
          ),
        ],
      ),
    );
  }
}
