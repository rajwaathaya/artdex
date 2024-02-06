import 'package:artdex/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:get/get.dart';
import '../../../widgets/appbar.dart';
import '../controllers/preview_controller.dart';

class PreviewView extends GetView<PreviewController> {
  const PreviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 450,
                width: double.infinity,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: radiusCircular(24),
                    bottomRight: radiusCircular(24),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/lukisan.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 16,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: white,
                    size: 30,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
              Positioned(
                top: 30,
                right: 16,
                child: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: white,
                    size: 30,
                  ),
                  onPressed: () {
                    openDialog(context);
                  },
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 450),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 23, right: 23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'John Erickson',
                          style: TextStyle(
                            fontSize: 27,
                            fontFamily: 'Poppins Semi Bold',
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: colorGrey,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  10.height,
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.PROFILE);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 23),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            foregroundImage: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/ridbuk-c47ca.appspot.com/o/joanna-nix-walkup-h2pnXHMz8YM-unsplash.jpg?alt=media&token=c58ff0d4-ab1b-4e85-b156-6f354c3de626'),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Iwanda Marella',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins Regular',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  50.height,
                  Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins Semi Bold',
                        ),
                      ),
                    ),
                  ),
                  10.height,
                  Padding(
                    padding: const EdgeInsets.only(left: 23, right: 23),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lorem ipsum dolor sit amet consectetur. Vitae commodo cursus dictum at. Cursus nulla id a et id. Consequat purus ultricies pellentesque mauris tempor quam odio vel. Mattis mattis porttitor enim gravida. Dui ac a blandit justo sed felis a urna. Lectus molestie diam parturient rutrum. Consectetur sem lectus massa tincidunt. Arcu est nulla vitae id diam justo orci consequat.',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins Thin',
                          color: colorTransparent,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  35.height,
                  Padding(
                    padding: EdgeInsets.only(left: 23, right: 23),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Comments',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Poppins Bold', fontSize: 22),
                        ),
                        TextButton(
                          onPressed: () {
                            openCommentBottomSheet(context);
                          },
                          child: Text(
                            'More comments..',
                            style: TextStyle(
                              fontFamily: 'Poppins Medium',
                              color: colorYellow,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  10.height,
                  Divider(
                    color: Colors.black26,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                    title: Text(
                      'Username',
                      style:
                          TextStyle(fontFamily: 'Poppins Medium', fontSize: 18),
                    ),
                    subtitle: Text(
                      'Lorem ipsum dolor sit amet consectetur.',
                      style: TextStyle(
                        fontFamily: 'Poppins Thin',
                        color: colorTransparent,
                      ),
                    ),
                    trailing: PopupMenuButton(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text('Edit'),
                          value: 'edit',
                        ),
                        PopupMenuItem(
                          child: Text('Delete'),
                          value: 'delete',
                        ),
                      ],
                      onSelected: (value) {
                        if (value == 'edit') {
                        } else if (value == 'delete') {}
                      },
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                    ),
                    title: Text(
                      'AnotherUser',
                      style:
                          TextStyle(fontFamily: 'Poppins Medium', fontSize: 18),
                    ),
                    subtitle: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'Poppins Thin',
                        color: colorTransparent,
                      ),
                    ),
                    trailing: PopupMenuButton(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text('Edit'),
                          value: 'edit',
                        ),
                        PopupMenuItem(
                          child: Text('Delete'),
                          value: 'delete',
                        ),
                      ],
                      onSelected: (value) {
                        if (value == 'edit') {
                        } else if (value == 'delete') {}
                      },
                    ),
                  ),
                  10.height,
                  Divider(
                    color: Colors.black26,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Type your comment...',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.send,
                            color: colorYellow,
                          ),
                          onPressed: () {},
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

Future<void> openDialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: white,
      title: Text(
        'What\'s wrong with this post?',
        style: TextStyle(fontFamily: 'Poppins Bold', fontSize: 16),
      ),
      content: TextFormField(
        autofocus: true,
        style: TextStyle(
          fontSize: 14,
          color: black,
        ),
        decoration: InputDecoration(
          hintText: 'Type something here...',
          hintStyle: TextStyle(
            fontSize: 14,
            color: grey,
          ),
          fillColor: Colors.black12,
          filled: true,
          contentPadding: EdgeInsets.all(16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
        maxLines: 5,
      ),
      actions: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: colorSecondary),
          child: Text(
            'Send',
            style: TextStyle(fontFamily: 'Poppins Regular', color: white),
          ),
        )
      ],
    ),
  );
}

Future<void> openCommentBottomSheet(BuildContext context) async {
  await showModalBottomSheet(
    context: context,
    builder: (context) => Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            title: Text(
              'Username',
              style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 18),
            ),
            subtitle: Text(
              'Lorem ipsum dolor sit amet consectetur.',
              style: TextStyle(
                fontFamily: 'Poppins Thin',
                color: colorTransparent,
              ),
            ),
            trailing: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text('Edit'),
                  value: 'edit',
                ),
                PopupMenuItem(
                  child: Text('Delete'),
                  value: 'delete',
                ),
              ],
              onSelected: (value) {
                if (value == 'edit') {
                  // Do something for edit
                } else if (value == 'delete') {
                  // Do something for delete
                }
              },
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
            ),
            title: Text(
              'AnotherUser',
              style: TextStyle(fontFamily: 'Poppins Medium', fontSize: 18),
            ),
            subtitle: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'Poppins Thin',
                color: colorTransparent,
              ),
            ),
            trailing: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text('Edit'),
                  value: 'edit',
                ),
                PopupMenuItem(
                  child: Text('Delete'),
                  value: 'delete',
                ),
              ],
              onSelected: (value) {
                if (value == 'edit') {
                  // Do something for edit
                } else if (value == 'delete') {
                  // Do something for delete
                }
              },
            ),
          ),
          // Add more ListTiles for additional comments if needed
          10.height,
          Divider(
            color: Colors.black26,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Type your comment...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.send,
                    color: colorYellow,
                  ),
                  onPressed: () {
                    // Handle send button pressed
                    // Implement logic to send the comment
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
