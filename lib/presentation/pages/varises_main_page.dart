import 'package:flutter/material.dart';
import 'package:varises/presentation/components/common/skeleton_home_page.dart';
import '../../common/app_theme.dart';
import '../../common/color.dart';
import '../components/common/bottom_navbar.dart';
import 'about_main_page.dart';
import 'detail_main_varises.dart';

class VarisesMainPage extends StatefulWidget {
  const VarisesMainPage({super.key});

  @override
  State<VarisesMainPage> createState() => _VarisesMainPageState();
}

class _VarisesMainPageState extends State<VarisesMainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Varises',
                style: AppTheme.appTextTheme.regulerNoneMedium!
                    .copyWith(color: BaseColors.neutral950),
              ),
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
                  const SizedBox(width: 8),
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
          ? const SkeletonHomePage()
          : ListView(
              children: [
                Padding(
                  // left , top , right , bottom
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 5,
                          // left: 20,
                        ),
                        width: double.infinity,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/Group 101.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ketahui Lebih Dalam',
                            style: AppTheme.appTextTheme.largeNoneMedium!
                                .copyWith(color: BaseColors.neutral950),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: BaseColors.neutral100,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/image 4.png',
                            width: 300,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Tanda dan Gejala Varises',
                            style: AppTheme.appTextTheme.largeNoneMedium,
                          ),
                          Text(
                            'Secara klinis, gejala varises dibagi ke dalam beberapa stadium klinis: Stadium I:...r',
                            style: AppTheme.appTextTheme.smallNormalReguler,
                            maxLines: 2,
                          ),
                          const SizedBox(height: 8),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailMainVarises(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: BaseColors.neutral100,
                              elevation: 0,
                              side: BorderSide(
                                color: BaseColors.primary200,
                                width: 2,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Baca Selengkapnya',
                                style: TextStyle(
                                  color: BaseColors.primary500,
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: BaseColors.neutral100,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/image 4.png',
                            width: 300,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Tanda dan Gejala Varises',
                            style: AppTheme.appTextTheme.largeNoneMedium,
                          ),
                          Text(
                            'Secara klinis, gejala varises dibagi ke dalam beberapa stadium klinis: Stadium I:...r',
                            style: AppTheme.appTextTheme.smallNormalReguler,
                            maxLines: 2,
                          ),
                          const SizedBox(height: 8),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: BaseColors.neutral100,
                              elevation: 0,
                              side: BorderSide(
                                color: BaseColors.primary200,
                                width: 2,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Baca Selengkapnya',
                                style: TextStyle(
                                  color: BaseColors.primary500,
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
