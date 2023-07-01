import 'package:amifood/pages/order_page.dart';
import 'package:amifood/pages/profil_page.dart';
import 'package:amifood/pages/shop_page.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import '../components/buttomBarItems.dart';
import '../const.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  // pages
  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
    const OrderPage(),
    const ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            tileMode: TileMode.clamp,
            colors: backgrouundColor,
          ),
        ),
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(_pages.length, (index) => _pages[index]),
        ),
        extendBody: true,
        bottomNavigationBar: (_pages.length <= maxCount)
            ? AnimatedNotchBottomBar(
                /// Provide NotchBottomBarController
                notchBottomBarController: _controller,
                color: Colors.white,
                showLabel: false,
                notchColor: Colors.grey.shade300,
    
                /// restart app if you change removeMargins
                removeMargins: false,
                bottomBarWidth: 500,
                durationInMilliSeconds: 500,
                bottomBarItems:  bottomBarItems,
                onTap: (index) {
                  /// perform action on tab change and to update pages you can update pages without pages
                  _pageController.animateToPage(index,
                      duration: const Duration(microseconds: 500),
                      curve: Curves.bounceInOut);
                },
              )
            : null,
      ),
    );
  }
}
