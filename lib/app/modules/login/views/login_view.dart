import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prime_tect_test/app/data/styles.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: backGroundColor,
        body: Form(
          key: controller.formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 108,
                    left: 42,
                    right: 42,
                    bottom: 67,
                  ),
                  child: Image.asset("assets/images/mbl_logo.png"),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalMargin),
                  child: Text(
                    "Welcome Back!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalMargin),
                  child: Text(
                    "Sign In to your account",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: fadedTextColor,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: horizontalMargin),
                  child: TextFormField(
                    controller: controller.emailController,
                    decoration: InputDecoration(
                      hintText: "Type your email",
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: fadedHintColor,
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: fadedHintColor,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/mail.png",
                          height: 10,
                          width: 10,
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      controller.formKey.currentState?.validate();
                    },
                    validator: (value) {
                      if (value != null) {
                        if (value.toString().trim().isEmpty) {
                          return "Please Enter valid email";
                        }
                      }

                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: horizontalMargin),
                  child: TextFormField(
                    controller: controller.passwordController,
                    obscureText: controller.obscurePassword.value,
                    decoration: InputDecoration(
                      hintText: "Type your password",
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: fadedHintColor,
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: fadedHintColor,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/lock.png",
                          height: 10,
                          width: 10,
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            controller.obscurePassword.value =
                                !controller.obscurePassword.value;
                          },
                          child: Image.asset(
                            "assets/images/eye-icon.png",
                            height: 10,
                            width: 10,
                          ),
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      controller.formKey.currentState?.validate();
                    },
                    validator: (value) {
                      if (value != null) {
                        if (value.toString().trim().isEmpty) {
                          return "Password is required";
                        }
                      }

                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalMargin),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: blueColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                InkWell(
                  onTap: () {
                    if (controller.formKey.currentState?.validate() == true) {
                      controller.signIn();
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    margin: const EdgeInsets.symmetric(
                      horizontal: horizontalMargin,
                    ),
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
