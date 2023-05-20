import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_library_app/utils/dimens.dart';

class CreateBookShelfSectionView extends StatefulWidget {
  const CreateBookShelfSectionView({Key? key}) : super(key: key);

  @override
  State<CreateBookShelfSectionView> createState() => _CreateBookShelfSectionViewState();
}

class _CreateBookShelfSectionViewState extends State<CreateBookShelfSectionView> {

  var _counterText="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Create shelf",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body:Column(
        children:[
          const SizedBox(height: MARGIN_LARGE,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              autofocus: true,
              onChanged: (value){
                setState(() {
                  _counterText = (0 + value.length).toString();
                });
              },
              maxLength: 50,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              decoration:  InputDecoration(
                  hintText: "Shelf name",
                  hintStyle: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: TEXT_REGULAR_3X
                  ),
                  counterText: "$_counterText/50"
              ),
            ),
          ),
          const Divider(color: Colors.black54,)
        ]
      ) ,
    );
  }
}
