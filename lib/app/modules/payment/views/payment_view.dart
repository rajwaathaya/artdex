import 'package:artdex/app/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Premium',
            style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 20)),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
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
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What are the benefits of going premium?',
                      style: TextStyle(
                          fontFamily: 'Poppins Semi Bold', fontSize: 16),
                    ),
                    15.height,
                    Text(
                      'Infinite posting capacity',
                      style: TextStyle(
                          fontFamily: 'Poppins Semi Bold', fontSize: 14),
                    ),
                    8.height,
                    Text(
                      'The presence of premium features, you can post and enrich your portfolio for you to show the public and add to your collection of art masterpieces, let\'s go to premium and get an impression of all people on your artwork!',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Poppins Regular',
                        fontSize: 12,
                        color: colorTransparent,
                      ),
                    ),
                    30.height,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Image.asset('assets/images/card.png',
                                    width: 30, height: 30),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Price',
                                        style: TextStyle(
                                          fontFamily: 'Poppins Bold',
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        '\$10',
                                        style: TextStyle(
                                          fontFamily: 'Poppins Bold',
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Colors.black12,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.check_circle,
                                          color: Color(0xFF52E573),
                                          size: 20,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'Infinite upload',
                                          style: TextStyle(
                                            fontFamily: 'Poppins Medium',
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.check_circle,
                                          color: Color(0xFF52E573),
                                          size: 20,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'Comment',
                                          style: TextStyle(
                                            fontFamily: 'Poppins Medium',
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.check_circle,
                                          color: Color(0xFF52E573),
                                          size: 20,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'Explore',
                                          style: TextStyle(
                                            fontFamily: 'Poppins Medium',
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.check_circle,
                                          color: Color(0xFF52E573),
                                          size: 20,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'Edit Profile',
                                          style: TextStyle(
                                            fontFamily: 'Poppins Medium',
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    30.height,
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: transparentColor),
                      child: ExpansionTile(
                        title: Text(
                          'Check Out',
                          style: TextStyle(
                              fontFamily: 'Poppins Bold', fontSize: 14),
                        ),
                        children: [
                          ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Premium Package',
                                  style: TextStyle(
                                      fontFamily: 'Poppins Medium',
                                      fontSize: 12),
                                ),
                                Text(
                                  '\$10.00',
                                  style: TextStyle(
                                      fontFamily: 'Poppins Bold', fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          20.height,
                          ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total',
                                  style: TextStyle(
                                      fontFamily: 'Poppins Bold', fontSize: 12),
                                ),
                                Text(
                                  '\$10.00',
                                  style: TextStyle(
                                      fontFamily: 'Poppins Bold', fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.black38,
                    ),
                    15.height,
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset('assets/images/midtrans.png'),
                    ),
                    30.height,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                              fontFamily: 'Poppins Regular', fontSize: 12),
                        ),
                        5.height,
                        Text(
                          'Iwanda Marella',
                          style: TextStyle(
                              fontFamily: 'Poppins Bold', fontSize: 14),
                        ),
                      ],
                    ),
                    50.height,
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: colorSecondary, fixedSize: Size(200, 50)),
                        onPressed: () {},
                        child: Text(
                          'Pay',
                          style: TextStyle(
                            color: white,
                            fontSize: 16,
                            fontFamily: 'Poppins Regular',
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
