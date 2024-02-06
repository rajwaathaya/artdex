import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../utils/colors.dart';
import '../controllers/post_controller.dart';
import 'package:dotted_border/dotted_border.dart';

class PostView extends GetView<PostController> {
  final PostController controller = Get.put(PostController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(25),
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  title: Text(
                    'Add Post',
                    style:
                        TextStyle(fontFamily: 'Poppins Medium', fontSize: 20),
                  ),
                  centerTitle: true,
                  leading: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: black,
                    ),
                  ),
                ),
              ),
              10.height,
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: DottedBorder(
                      color: colorSecondary,
                      strokeWidth: 3,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(10),
                      dashPattern: [20, 5],
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(
                            color: colorYellow2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/images/upload.png'),
                                ),
                                10.height,
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            colorSecondary),
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size(170, 32)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.cloud_upload,
                                        color: white,
                                      ),
                                      10.width,
                                      Text(
                                        'Upload Image',
                                        style: TextStyle(color: white),
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
                  ),
                  10.height,
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(fontSize: 14, color: grey),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.title),
                            hintText: 'Title',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: grey,
                            ),
                            fillColor: colorGrey2,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        20.height,
                        DropdownButtonFormField<String>(
                          style: TextStyle(fontSize: 14, color: grey),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.category),
                            hintText: 'Category',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: grey,
                            ),
                            fillColor: colorGrey2,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          value: controller.selectedCategory.value,
                          items: ['2D', '3D'].map((category) {
                            return DropdownMenuItem<String>(
                              value: category,
                              child: Text(category),
                            );
                          }).toList(),
                          onChanged: (value) {
                            controller.selectedCategory.value = value!;
                          },
                        ),
                        20.height,
                        TextFormField(
                          style: TextStyle(fontSize: 14, color: grey),
                          maxLines: null,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.short_text),
                            hintText: 'Description',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: grey,
                            ),
                            fillColor: colorGrey2,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        50.height,
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: colorSecondary,
                              fixedSize: Size(200, 50),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
