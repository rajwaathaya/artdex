import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import '../controllers/contact_controller.dart';

class ContactView extends GetView<ContactController> {
  const ContactView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Contact Us',
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              20.height,
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Frequently Asked Questions',
                    style: TextStyle(
                      fontFamily: 'Poppins Medium',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              20.height,
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1. How ArtDex works?',
                      style: TextStyle(
                        fontFamily: 'Poppins Medium',
                        fontSize: 14,
                      ),
                    ),
                    8.height,
                    Text(
                      'The "ARTDEX" software program is a program that has a function to provide space for artists to create their portfolios to be enjoyed by the wider media and is expected to be a media sharing in terms of art. The ARTDEX media platform also provides facilities for users to upload their work with a limited capacity, except for users who have upgraded to premium. They will get the privilege of being able to post their work without uploading their work.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Poppins Regular',
                        fontSize: 12,
                        color: colorTransparent,
                      ),
                    ),
                    20.height,
                    Text(
                      '2. How to update premium?',
                      style: TextStyle(
                        fontFamily: 'Poppins Medium',
                        fontSize: 14,
                      ),
                    ),
                    8.height,
                    Text(
                      'Go to your profile page, select the Profile settings, select upgrade to premium, make the payment as directed and your account has been converted to premium.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Poppins Regular',
                        fontSize: 12,
                        color: colorTransparent,
                      ),
                    ),
                    30.height,
                    Text(
                      'Any Question?',
                      style: TextStyle(
                        fontFamily: 'Poppins Medium',
                        fontSize: 14,
                      ),
                    ),
                    20.height,
                    TextFormField(
                      style: TextStyle(
                        fontSize: 14,
                        color: grey,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Type something here...',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: grey,
                        ),
                        fillColor: colorGrey2,
                        filled: true,
                        contentPadding: EdgeInsets.all(16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      maxLines: 5,
                    ),
                    25.height,
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle submit button click
                        },
                        style: ElevatedButton.styleFrom(
                          primary: colorSecondary,
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontFamily: 'Poppins Thin',
                            color: white,
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
