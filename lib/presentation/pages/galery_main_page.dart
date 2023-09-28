import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import '../../common/app_theme.dart';
import '../../common/color.dart';
import '../components/common/bottom_navbar.dart';
import '../components/common/skeleton_galery.dart';
import 'about_main_page.dart';

class GaleryMainPage extends StatefulWidget {
  GaleryMainPage({Key? key});

  final List<String> _items = [
    'assets/images/grid1.png',
    'assets/images/grid2.png',
    'assets/images/grid3.png',
    'assets/images/grid4.png',
    'assets/images/grid5.png',
    'assets/images/grid6.png',
  ];

  @override
  State<GaleryMainPage> createState() => _GaleryMainPageState();
}

class _GaleryMainPageState extends State<GaleryMainPage> {
  int _selectedIndex = 0; // Inisialisasi _selectedIndex

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => setState(() {
        isLoading = false;
      }),
    );
  }

  void _showImageDialog(String imagePath, String imageText) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Ink(
                    color: Colors.transparent,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                imageText,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Galeri',
                  style: AppTheme.appTextTheme.regulerNoneMedium!.copyWith(
                    color: BaseColors.neutral950,
                  )),
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border: Border.all(
                        color: BaseColors.neutral200,
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/id Indonesia.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'ID',
                          style: AppTheme.appTextTheme.xSmallNoneMedium!
                              .copyWith(color: BaseColors.neutral950),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutMainPage()),
                      );
                    },
                    child: const Icon(
                      Icons.info_outline_rounded,
                      color: Colors.black,
                      size: 35,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: isLoading
          ? const SkeletonGalery()
          : ListView(
              children: [
                Padding(
                  // left, top, right, bottom
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 16),
                  child: MasonryView(
                    listOfItem: widget._items,
                    numberOfColumn: 2,
                    itemBuilder: (item) {
                      return GestureDetector(
                        onTap: () {
                          _showImageDialog(item, 'Varises');
                        },
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
