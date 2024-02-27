import 'package:coffee_shop/configs/constants.dart';
import 'package:coffee_shop/screens/home_screen.dart';
//  import 'package:coffee_shop/screens/home_screen.dart';
// import 'package:coffee_shop/screens/login_page_two.dart';
// import 'package:coffee_shop/screens/sign_up_page.dart';
import 'package:coffee_shop/screens/welcome_screen.dart';
import 'package:coffee_shop/widgets/home_bottom_bar.dart';
import 'package:coffee_shop/widgets/items_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: primaryColor,
      ),
      home: WelcomeScreen(),
    );
  }
}
