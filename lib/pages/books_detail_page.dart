import 'package:flutter/material.dart';

class BooksDetail extends StatefulWidget {
  const BooksDetail({Key? key}) : super(key: key);

  @override
  State<BooksDetail> createState() => _BooksDetailState();
}

class _BooksDetailState extends State<BooksDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.grey,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(13.0),
            child: Image(
              image: AssetImage(
                  "assets/icons/export.png"
              ),width: 20,
            ),
          ),
        ],
      ),
    );
  }
}
