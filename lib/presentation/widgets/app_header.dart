import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onMenuTap;

  const AppHeader({
    Key? key,
    this.onMenuTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Image.asset(
          'assets/images/logo_son_tung.jpg',
          height: 32,
          fit: BoxFit.contain,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openEndDrawer(); // 👈 Mở Drawer từ bên phải
          },
        ),
      ],
      elevation: 2,
      backgroundColor: Color.fromARGB(255, 40, 138, 140),
      centerTitle: true,
      title: const SizedBox(), // Không có title
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
