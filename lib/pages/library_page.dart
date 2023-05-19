import 'package:flutter/material.dart';
import 'package:the_library_app/view_layer/your_books_view.dart';
import 'package:the_library_app/view_layer/your_shelves_view.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> with SingleTickerProviderStateMixin{

  late TabController controller;
  int currentIndex = 0;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    controller.addListener(() {
      setState(() {
        currentIndex = controller.index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
            controller: controller,
            labelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle:
            const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            labelStyle: const TextStyle(
                color: Color.fromRGBO(85, 85, 85, 1.0),
                fontSize: 16,
                fontWeight: FontWeight.w700),
            tabs: const [
              Tab(
                child: Text("Your books"),
              ),
              Tab(
                child: Text("Your shelves"),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(controller:controller,
                children: const [
                  YourBooksView(),
                  YourShelvesView()
            ],),
          )
        ],
      ),
    );
  }
}
