import 'package:flutter/material.dart';

import '../../common/app_theme.dart';
import '../../common/color.dart';
import '../components/common/bottom_navbar.dart';
import '../components/common/skeleton_home_page.dart';
import 'detail_artikel_main.dart';

class ArtikelMainPage extends StatefulWidget {
  const ArtikelMainPage({Key? key});

  @override
  State<ArtikelMainPage> createState() => _ArtikelMainPageState();
}

class _ArtikelMainPageState extends State<ArtikelMainPage> {
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

  TextEditingController searchController = TextEditingController();
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: isSearching ? _buildSearchField() : _buildTitle(),
        actions: _buildActions(),
      ),
      body: isLoading
          ? const SkeletonHomePage()
          : ListView(
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailArtikelMain(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 16),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: BaseColors.neutral100,
                            border: Border.all(
                              color: BaseColors.neutral50,
                            ),
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/artikel1.png',
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: BaseColors.primary500,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        'Saran Dokter',
                                        style: AppTheme
                                            .appTextTheme.xSmallNoneReguler!
                                            .copyWith(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      'Pentingnya Penanganan dan Pemberian Obat Varises Esofagus yang Tepat',
                                      style: AppTheme
                                          .appTextTheme.largeNoneMedium!
                                          .copyWith(
                                              color: BaseColors.neutral950),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      'Varises esofagus adalah pembengkakan atau pelebaran pembuluh darah pada...',
                                      style: AppTheme
                                          .appTextTheme.smallNormalReguler!
                                          .copyWith(
                                              color: BaseColors.neutral600),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_today_rounded,
                                          color: BaseColors.neutral600,
                                          size: 15,
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          '12 Agustus 2021',
                                          style: AppTheme
                                              .appTextTheme.smallNoneReguler!
                                              .copyWith(
                                                  color: BaseColors.neutral500),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Tambahkan item-item lainnya di sini dengan InkWell yang sama untuk navigasi
                  ],
                ),
              ],
            ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  List<Widget> _buildActions() {
    if (isSearching) {
      return [
        IconButton(
          icon: const Icon(
            Icons.clear,
            color: Colors.black,
          ),
          onPressed: () {
            setState(() {
              isSearching = false;
              searchController.clear();
            });
          },
        ),
      ];
    } else {
      return [
        IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          onPressed: () {
            setState(() {
              isSearching = true;
            });
          },
        ),
      ];
    }
  }

  Widget _buildTitle() {
    return Text(
      'Artikel',
      style: AppTheme.appTextTheme.regulerNormalMedium!
          .copyWith(color: BaseColors.neutral950),
    );
  }

  Widget _buildSearchField() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: TextField(
          controller: searchController,
          // autofocus: true,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 1,
              horizontal: 30,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: BaseColors.neutral200,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: BaseColors.neutral200,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            hintText: 'Search',
            hintStyle: AppTheme.appTextTheme.xSmallNormalReguler!
                .copyWith(color: BaseColors.neutral400),
          ),
        ),
      ),
    );
  }
}
