import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.teal,
            centerTitle: false, // hoặc true nếu muốn giữa
            title: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.center, // 👈 căn trái cho đẹp
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Hello',
                                style: TextStyle(fontSize: 20),
                              ),
                              const SizedBox(width: 6),
                              SvgPicture.asset(
                                'assets/icons/cloud.svg',
                                height: 20,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'How can I assist you today?',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/coin.svg',
                                height: 20,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 6),
                              const Text(
                                '101.1k',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ])),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              color: const Color.fromARGB(255, 27, 75, 95), // ✅ Màu nền ở đây
              padding: const EdgeInsets.all(16), // ✅ Padding trong container
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '🌤 Current Weather',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // nhớ set màu chữ nếu nền tối
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Nội dung thời tiết ở đây...',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 120,
              color: const Color.fromARGB(255, 27, 75, 95), // ✅ Màu nền ở đây
              padding: const EdgeInsets.all(16), // ✅ Padding trong container
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '🌤 Current Weather',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // nhớ set màu chữ nếu nền tối
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Nội dung thời tiết ở đây...',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
