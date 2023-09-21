import 'package:flutter/material.dart';
import 'package:flutter1/Widgets/post_card.dart';
import 'package:flutter1/utils/colors.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: Text("App Name"), //put svg here if we have logo
        centerTitle: false,//no icon as team did not want messaging feature


        ],

      ),
      body:const PostCard()
    );
  }
}
