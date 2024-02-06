import 'package:artdex/app/routes/app_pages.dart';
import 'package:artdex/app/widgets/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:artdex/app/utils/colors.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import '../controllers/home_controller.dart';
import '../../../widgets/appbar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: DefaultTabController(
                length: 4,
                child: Scaffold(
                  backgroundColor: white,
                  body: Column(
                    children: [
                      TabBar(
                        tabs: [
                          Tab(
                            text: '2D',
                          ),
                          Tab(text: '3D'),
                          Tab(text: 'All'),
                          Tab(text: 'Popular'),
                        ],
                        indicatorColor:
                            colorSecondary, // Change to your desired indicator color
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            // Content for Tab 1
                            buildTabContent(0),
                            // Content for Tab 2
                            buildTabContent(1),
                            // Content for Tab 3
                            buildTabContent(2),
                            // Content for Tab 4
                            buildTabContent(3),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
      bottomNavigationBar: BottomNav(index: 0),
    );
  }

  // Function to build content for each tab
  Widget buildTabContent(int tabIndex) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 10,
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed(Routes.PREVIEW);
            },
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    ('https://source.unsplash.com/random?sig=$index&tab=$tabIndex'),
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      getImageTitle(index, tabIndex),
                      style: TextStyle(fontSize: 14),
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite, size: 20),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

// Function to get different titles for each image
  String getImageTitle(int index, int tabIndex) {
    switch (tabIndex) {
      case 0:
        return '2D Image $index';
      case 1:
        return '3D Image $index';
      case 2:
        return 'All Image $index';
      case 3:
        return 'Popular Image $index';
      default:
        return '';
    }
  }
}

class PhotoModel {
  final String imageUrl;
  final String title;
  final String description;

  PhotoModel(
      {required this.imageUrl, required this.title, required this.description});
}
