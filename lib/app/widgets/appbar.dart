import 'package:artdex/app/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });
  // final body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Container(
            width: 40,
            height: 40,
            child: Image.asset('assets/icon/logo.png'),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.help_outline),
          color: colorGrey,
          iconSize: 30,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
            color: colorGrey,
            iconSize: 30,
          ),
        ],
        // bottom: TabBar(
        //   indicatorColor: colorSecondary,
        //   unselectedLabelColor: colorPrimary,
        //   labelColor: colorSecondary,
        //   tabs: [
        //     Tab(
        //       child: Text('2D',
        //           style: TextStyle(
        //               fontFamily: 'Poppins Medium',
        //               fontWeight: FontWeight.w600)),
        //     ),
        //     Tab(
        //       child: Text('All',
        //           style: TextStyle(
        //               fontFamily: 'Poppins Medium',
        //               fontWeight: FontWeight.w600)),
        //     ),
        //     Tab(
        //       child: Text('3D',
        //           style: TextStyle(
        //               fontFamily: 'Poppins Medium',
        //               fontWeight: FontWeight.w600)),
        //     ),
        //   ],
        // ),
      ),
      // body: Expanded(
      //   child: TabBarView(children: [
      //     Center(
      //       child: Text('page 2D'),
      //     ),
      //     Center(
      //       child: Text('page All'),
      //     ),
      //     Center(
      //       child: Text('page 3D'),
      //     )
      //   ]),
      // ),
    );
  }
}
