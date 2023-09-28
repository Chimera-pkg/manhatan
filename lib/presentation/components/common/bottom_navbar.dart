import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/color.dart';
import '../../pages/artikel_main_page.dart';
import '../../pages/galery_main_page.dart';
import '../../pages/home_page.dart';
import '../../pages/varises_main_page.dart';
import '../../providers/button_providers.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomNavBarProvider = Provider.of<ButtonProviders>(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            BottomNavigationBar(
              currentIndex: bottomNavBarProvider.currentIndex,
              onTap: (index) {
                bottomNavBarProvider.currentIndex = index;
                switch (index) {
                  case 0:
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                    break;
                  case 1:
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const VarisesMainPage()),
                    );
                    break;
                  case 3:
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const ArtikelMainPage()),
                    );
                    break;
                  case 4:
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => GaleryMainPage()),
                    );
                    break;
                  // Tambahkan kasus untuk halaman lainnya sesuai kebutuhan.
                }
              },
              selectedItemColor: BaseColors.primary600,
              unselectedItemColor: BaseColors.neutral500,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    const AssetImage('assets/images/home.png'),
                    color: bottomNavBarProvider.currentIndex == 0
                        ? BaseColors.primary600
                        : BaseColors.neutral500,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(const AssetImage('assets/images/lamp-on.png'),
                      color: bottomNavBarProvider.currentIndex == 1
                          ? BaseColors.primary600
                          : BaseColors.neutral500),
                  label: 'Varises',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                      const AssetImage('assets/images/archive-book.png'),
                      color: bottomNavBarProvider.currentIndex == 3
                          ? BaseColors.primary600
                          : BaseColors.neutral500),
                  label: 'Artikel',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                      const AssetImage('assets/images/gallery-favorite.png'),
                      color: bottomNavBarProvider.currentIndex == 4
                          ? BaseColors.primary600
                          : BaseColors.neutral500),
                  label: 'Galeri',
                ),
              ],
            ),
            Positioned(
              bottom:
                  16, // Sesuaikan posisi tombol Konsultasi di bagian bawah Bottom Navigation bar.
              child: GestureDetector(
                onTap: () {
                  // Aksi yang ingin Anda lakukan saat tombol Konsultasi ditekan.
                  // Misalnya, tampilkan layar konsultasi atau lakukan tindakan lainnya.
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      32), // Sesuaikan dengan sudut yang diinginkan.
                  child: Container(
                    width: 40, // Sesuaikan lebar tombol sesuai kebutuhan Anda.
                    height:
                        40, // Sesuaikan tinggi tombol sesuai kebutuhan Anda.
                    color: BaseColors.primary600,
                    child: Center(
                      child: Text(
                        '+',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
