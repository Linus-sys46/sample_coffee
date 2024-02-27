import 'package:coffee_shop/components/my_text_field.dart';
import 'package:coffee_shop/configs/constants.dart';
import 'package:coffee_shop/screens/home_screen.dart';
import 'package:flutter/material.dart';
// import 'package:coffee_shop/components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.grey[300],
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.food_bank,
                  size: 200,
                  color: Colors.blueGrey,
                ),
                const Text(
                  "Let's Create an account for you",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                MyTextField(
                  controller: firstNameController,
                  hinText: 'First name',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                MyTextField(
                  controller: lastNameController,
                  hinText: 'Last Name',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
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
                MyTextField(
                  controller: confirmPasswordController,
                  hinText: 'Confirm Password',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                // MyButton(onTap: () {}, text: "Sign In"),
                // const SizedBox(
                //   height: 25,
                // ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     const Text(
                //       "Already a member?",
                //       style: TextStyle(
                //         color: Colors.blueGrey,
                //         // fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //     const SizedBox(
                //       width: 4,
                //     ),
                //     GestureDetector(
                //       onTap: widget.onTap,
                //       child: const Text(
                //         "Login now",
                //         style: TextStyle(
                //           color: Colors.blueGrey,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Register",
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
    );
  }
}
