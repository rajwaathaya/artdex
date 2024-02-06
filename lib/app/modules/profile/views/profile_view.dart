import 'package:artdex/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../utils/colors.dart';
import '../../../widgets/bottomnav.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({Key? key}) : super(key: key);

  final List<Widget> tabs = const [
    Tab(text: '2D'),
    Tab(text: 'All'),
    Tab(text: '3D'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {
                Get.toNamed(Routes.CONTACT);
              },
              icon: Icon(
                Icons.info_outline,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        "Where will you go?",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontFamily: 'Poppins Bold', fontSize: 18),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text(
                              "Edit Profile",
                              style: TextStyle(
                                fontFamily: 'Poppins Medium',
                                fontSize: 16,
                              ),
                            ),
                            onTap: () {
                              Get.toNamed(Routes.EDIT);
                            },
                          ),
                          ListTile(
                            title: Text(
                              "Delete this account",
                              style: TextStyle(
                                  fontFamily: 'Poppins Bold',
                                  fontSize: 16,
                                  color: Color(0xFF8D0F0F)),
                            ),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                      "Are you sure to delete this account?",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Poppins Bold',
                                          fontSize: 18),
                                    ),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ListTile(
                                          title: Text(
                                            "Delete",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'Poppins Bold',
                                                fontSize: 16,
                                                color: Color(0xFF8D0F0F)),
                                          ),
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        ListTile(
                                          title: Text(
                                            "Cancel",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Poppins Medium',
                                              fontSize: 16,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                foregroundImage: NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/ridbuk-c47ca.appspot.com/o/joanna-nix-walkup-h2pnXHMz8YM-unsplash.jpg?alt=media&token=c58ff0d4-ab1b-4e85-b156-6f354c3de626"),
              ),
              10.height,
              Text(
                'Iwanda Marella',
                style: TextStyle(
                    color: black, fontFamily: 'Poppins Medium', fontSize: 14),
              ),
              3.height,
              Text(
                'iwarell23@gmail.com',
                style: TextStyle(
                    color: colorTransparent,
                    fontFamily: 'Poppins Regular',
                    fontSize: 10),
              ),
              5.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/crown.png',
                    height: 13,
                  ),
                  5.width,
                  Text(
                    'Premium',
                    style: TextStyle(color: black, fontSize: 12),
                  ),
                ],
              ),
              30.height,
              TabBar(
                tabs: tabs,
                indicatorColor: colorSecondary,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    contentTab(0),
                    contentTab(1),
                    contentTab(2),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: colorSecondary,
          shape: CircleBorder(),
          onPressed: () {
            Get.toNamed(Routes.POST);
          },
          child: Icon(
            Icons.add,
            color: white,
            size: 30,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNav(index: 1),
      ),
    );
  }

  Widget contentTab(int tabIndex) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 1, mainAxisSpacing: 1),
        itemCount: 20,
        itemBuilder: (context, index) {
          return GridPhoto(
            index: index,
            tabIndex: tabIndex,
          );
        });
  }
}

class GridPhoto extends GetView<ProfileController> {
  final int index;
  final int tabIndex;

  GridPhoto({required this.index, required this.tabIndex});

  @override
  Widget build(BuildContext context) {
    RxBool showPhoto = false.obs;

    return Obx(
      () => Stack(
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.PREVIEW);
            },
            onLongPress: () {
              showPhoto.value = true;
            },
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.network(
                'https://source.unsplash.com/random?sig=$index&tab=$tabIndex',
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (showPhoto.value)
            Container(
              color: Colors.black.withOpacity(0.7),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        showPhoto.value = false;
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
