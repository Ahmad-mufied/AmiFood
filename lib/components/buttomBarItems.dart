import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../const.dart';

List<BottomBarItem> bottomBarItems = [
  BottomBarItem(
    inActiveItem: Icon(
      Icons.home_filled,
      color: inactiveButtonColor,
    ),
    activeItem: Icon(
      Icons.home_filled,
      color: activeButtonColor,
    ),
  ),
  BottomBarItem(
    inActiveItem: Icon(
      Icons.shopping_cart,
      color: inactiveButtonColor,
    ),
    activeItem: Icon(
      Icons.shopping_cart,
      color: activeButtonColor,
    ),
  ),
  BottomBarItem(
    inActiveItem: Icon(
      Icons.history_sharp,
      color: inactiveButtonColor,
    ),
    activeItem: Icon(
      Icons.history_sharp,
      color: activeButtonColor,
    ),
  ),
  BottomBarItem(
    inActiveItem: Icon(
      Icons.person,
      color: inactiveButtonColor,
    ),
    activeItem: Icon(
      Icons.person,
      color: activeButtonColor,
    ),
  ),
];
