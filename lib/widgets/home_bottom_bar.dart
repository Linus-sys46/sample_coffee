import 'package:coffee_shop/configs/constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  // const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   bottomNavigationBar: CurvedNavigationBar(
    //     backgroundColor: Colors.transparent,
    //     onTap: (index) {},
    //     height: 70,
    //     color: Color(0xFF4C53A5),
    //     items: [
    //       Icon(
    //         Icons.home,
    //         size: 30,
    //         color: whiteColor,
    //       ),
    //       Icon(
    //         Icons.shopping_cart_outlined,
    //         size: 30,
    //         color: whiteColor,
    //       ),
    //       Icon(
    //         Icons.favorite_outline_outlined,
    //         size: 30,
    //         color: whiteColor,
    //       ),
    //       Icon(
    //         Icons.person,
    //         size: 30,
    //         color: whiteColor,
    //       ),
    //     ],
    //   ),
    // );
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFF212325),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            color: whiteColor,
            size: 35,
          ),
          Icon(
            Icons.shopping_cart,
            color: whiteColor,
            size: 35,
          ),
          Icon(
            Icons.favorite_border,
            color: whiteColor,
            size: 35,
          ),
          Icon(
            Icons.person,
            color: whiteColor,
            size: 35,
          ),
        ],
      ),
    );
  }
}
