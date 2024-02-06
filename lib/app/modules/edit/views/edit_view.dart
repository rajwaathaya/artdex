import 'package:artdex/app/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

import '../controllers/edit_controller.dart';

class EditView extends GetView<EditController> {
  const EditView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Edit Profile',
          style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 20),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: black,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              30.height,
              Stack(
                children: [
                  CircleAvatar(
                    radius: 40,
                    foregroundImage: NetworkImage(
                        "https://firebasestorage.googleapis.com/v0/b/ridbuk-c47ca.appspot.com/o/joanna-nix-walkup-h2pnXHMz8YM-unsplash.jpg?alt=media&token=c58ff0d4-ab1b-4e85-b156-6f354c3de626"),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: colorSecondary,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt),
                          iconSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              20.height,
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username',
                      style: TextStyle(
                        fontFamily: 'Poppins Medium',
                        fontSize: 14,
                        color: black,
                      ),
                    ),
                    10.height,
                    TextFormField(
                      style: TextStyle(color: black),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Enter Username',
                        hintStyle: TextStyle(color: Color(0x50000000)),
                        fillColor: colorGrey2,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    20.height,
                    Text(
                      'Email',
                      style: TextStyle(
                        fontFamily: 'Poppins Medium',
                        fontSize: 14,
                        color: black,
                      ),
                    ),
                    10.height,
                    TextFormField(
                      style: TextStyle(color: black),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Enter Email',
                        hintStyle: TextStyle(color: Color(0x50000000)),
                        fillColor: colorGrey2,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    20.height,
                    Text(
                      'Password',
                      style: TextStyle(
                        fontFamily: 'Poppins Medium',
                        fontSize: 14,
                        color: black,
                      ),
                    ),
                    10.height,
                    TextFormField(
                      style: TextStyle(color: black),
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      maxLength: 8,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(color: Color(0x50000000)),
                        fillColor: colorGrey2,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        counterText: '',
                      ),
                    ),
                    50.height,
                    Padding(
                      padding: const EdgeInsets.only(left: 35, right: 35),
                      child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: colorSecondary,
                              fixedSize: Size(200, 50)),
                          onPressed: () {},
                          child: Text(
                            'Save Change',
                            style: TextStyle(color: white),
                          ),
                        ),
                      ),
                    ),
                    15.height,
                    Padding(
                      padding: const EdgeInsets.only(left: 35, right: 35),
                      child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: white,
                              fixedSize: Size(200, 50),
                              side:
                                  BorderSide(color: colorSecondary, width: 2)),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/crown.png',
                                height: 15,
                              ),
                              5.width,
                              Text(
                                'Get Premium',
                                style: TextStyle(color: colorSecondary),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
