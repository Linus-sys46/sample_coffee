import 'package:coffee_shop/components/my_text_field.dart';
import 'package:coffee_shop/configs/constants.dart';
import 'package:coffee_shop/screens/home_screen.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/get_navigation.dart';

class LoginPage extends StatefulWidget {
  // final void Function()? onTap;
  // const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          foregroundColor: whiteColor,
          backgroundColor: Colors.black12),
      // backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Container(
            decoration: BoxDecoration(
                color: primaryColor,
                image: DecorationImage(
                  image: AssetImage("assets/images/coffee.png"),
                  fit: BoxFit.cover,
                  opacity: 0.5,
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Coffee Shop",
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    MyTextField(
                      controller: emailController,
                      hinText: 'Email | Phone number',
                      obscureText: false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyTextField(
                      controller: passwordController,
                      hinText: 'Password',
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // MyButton(onTap: signIn, text: "Sign In"),
                    // MaterialButton(
                    //   onPressed: () => Get.toNamed("/register_page"),
                    //   child: Text(
                    //     "Sign In",
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    //   height: 50,
                    //   minWidth: 200,
                    //   color: Colors.blueGrey,
                    //   elevation: 10,
                    // ),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     const Text(
                    //       "Not a member?",
                    //       style: TextStyle(color: Colors.blueGrey),
                    //     ),
                    //     const SizedBox(
                    //       width: 4,
                    //     ),
                    //     GestureDetector(
                    //       // onTap: widget.onTap,
                    //       child: const Text(
                    //         "Register now",
                    //         style: TextStyle(
                    //           color: Colors.blueGrey,
                    //           fontWeight: FontWeight.bold,
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Login now",
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
