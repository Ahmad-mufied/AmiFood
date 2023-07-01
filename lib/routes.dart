import 'package:amifood/pages/login_page.dart';
import 'package:amifood/pages/order_page.dart';
import 'package:amifood/pages/profil_page.dart';
import 'package:amifood/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:amifood/pages/cart_page.dart';

class Routes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => const ShopPage(),
    '/login': (context) => const LoginPage(),
    '/cart': (context) => const CartPage(),
    '/order': (context) => const OrderPage(),
    '/profil': (context) => const ProfilPage(),
  };
}
