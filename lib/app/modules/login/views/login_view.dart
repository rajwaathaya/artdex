import 'package:artdex/app/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../widgets/custombtn.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  GlobalKey<FormState> form = GlobalKey();
  LoginView({super.key});
  RxBool visibilityPass = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  15.height,
                  Container(
                    height: 260,
                    width: 300,
                    child: Image.asset(
                      'assets/images/login.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  15.height,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      controller.isRegis ? 'Create Account' : 'Welcome Back!',
                      style: TextStyle(
                        fontSize: 32,
                        color: colorYellow,
                        fontFamily: 'Poppins Bold',
                      ),
                    ),
                  ),
                  4.height,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      controller.isRegis
                          ? 'We are happy to see you here!'
                          : 'Hey! Good to see you again.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontFamily: 'Poppins Medium',
                      ),
                    ),
                  ),
                  30.height,
                  Form(
                    key: form,
                    child: Column(
                      children: [
                        //NAME
                        TextFormField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Enter Name',
                            hintStyle: TextStyle(color: colorGrey3),
                            prefixIcon: Icon(Icons.person, color: colorGrey3),
                            filled: true,
                            fillColor: colorGrey2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: colorSecondary,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        10.height,
                        //EMAIL
                        if (controller.isRegis)
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            style: TextStyle(color: colorGrey3),
                            decoration: InputDecoration(
                              hintText: 'Enter Email',
                              hintStyle: TextStyle(color: colorGrey3),
                              prefixIcon: Icon(Icons.email, color: colorGrey3),
                              filled: true,
                              fillColor: colorGrey2,
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: colorSecondary,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        10.height,
                        //PW
                        TextFormField(
                          obscureText: !visibilityPass.value,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          style: TextStyle(color: colorGrey3),
                          decoration: InputDecoration(
                            hintText: 'Enter Password',
                            hintStyle: TextStyle(color: colorGrey3),
                            prefixIcon: Icon(Icons.lock, color: colorGrey3),
                            filled: true,
                            fillColor: colorGrey2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: colorSecondary,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                visibilityPass.value = !visibilityPass.value;
                              },
                              icon: visibilityPass.value
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                              color: colorGrey3,
                            ),
                          ),
                        ),
                        10.height,
                        //CONFIR PW
                        if (controller.isRegis)
                          TextFormField(
                            obscureText: !visibilityPass.value,
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                            style: TextStyle(color: colorGrey3),
                            decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(color: colorGrey3),
                              prefixIcon:
                                  Icon(Icons.check_circle, color: colorGrey3),
                              filled: true,
                              fillColor: colorGrey2,
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: colorSecondary,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  visibilityPass.value = !visibilityPass.value;
                                },
                                icon: visibilityPass.value
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                                color: colorGrey3,
                              ),
                            ),
                          ),
                        30.height,
                        Padding(
                          padding: const EdgeInsets.only(left: 50, right: 50),
                          child: GestureDetector(
                            onTap: () {},
                            child: controller.isRegis
                                ? CustomBtn(
                                    width: double.infinity,
                                    text: 'Sign Up',
                                    btnColor: colorSecondary,
                                    btnTextColor: white,
                                  )
                                : CustomBtn(
                                    width: double.infinity,
                                    text: 'Sign In',
                                    btnColor: colorSecondary,
                                    btnTextColor: white,
                                  ),
                          ),
                        ),
                        15.height,
                        GestureDetector(
                          child: Text(
                            controller.isRegis
                                ? 'Already Have Account? Sign In Here'
                                : 'Doesn\'t Have Account? Sign Up Here',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black54,
                              fontFamily: 'Poppins Light Italic',
                            ),
                          ),
                          onTap: () {
                            controller.isRegis = !controller.isRegis;
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
