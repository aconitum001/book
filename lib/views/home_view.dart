import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:books/utils/assets.dart';
import 'package:books/views/comminucation_view_body.dart';
import 'package:books/views/library_view_body.dart';
import 'package:books/views/profile_view_body.dart';
import 'package:books/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0; // Keeps track of the selected index

  // Define the list of navigation views
  List<Widget> navigationItems = const [
    HomeViewBody(),
    LibraryViewBody(),
    ComminucationViewBody(),
    ProfileViewBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.backgroundColor,
          selectedLabelStyle: AppStyles.style12Medium(
            context,
            color: AppColors.primaryColor,
          ),
          unselectedLabelStyle: AppStyles.style12Medium(
            context,
            color: AppColors.lightText,
          ),
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.lightText,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              label: "Explore",
              activeIcon: SvgPicture.asset(
                Assets.assetsImagesSafari,
                colorFilter: const ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              icon: SvgPicture.asset(
                Assets.assetsImagesSafari,
                colorFilter: ColorFilter.mode(
                  AppColors.lightText,
                  BlendMode.srcIn,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "My Library",
              activeIcon: SvgPicture.asset(
                Assets.assetsImagesBookmark,
                colorFilter: const ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              icon: SvgPicture.asset(
                Assets.assetsImagesBookmark,
                colorFilter: ColorFilter.mode(
                  AppColors.lightText,
                  BlendMode.srcIn,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Community",
              activeIcon: SvgPicture.asset(
                Assets.assetsImagesPeople,
                colorFilter: const ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              icon: SvgPicture.asset(
                Assets.assetsImagesPeople,
                colorFilter: ColorFilter.mode(
                  AppColors.lightText,
                  BlendMode.srcIn,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              activeIcon: SvgPicture.asset(
                Assets.assetsImagesUser,
                colorFilter: const ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              icon: SvgPicture.asset(
                Assets.assetsImagesUser,
                colorFilter: ColorFilter.mode(
                  AppColors.lightText,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
        // Display the selected view based on the current index
        body: navigationItems[_currentIndex],
      ),
    );
  }
}
