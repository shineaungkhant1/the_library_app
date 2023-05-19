import 'package:flutter/material.dart';

class CircleProfile extends StatelessWidget {

  String imageUrl;


  CircleProfile({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: MediaQuery.of(context).size.height / 35,
      backgroundImage:  NetworkImage(
        imageUrl,
      ),
    );
  }
}
