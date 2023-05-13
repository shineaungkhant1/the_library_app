// import 'package:flutter/material.dart';
//
// import '../utils/dimens.dart';
// import '../view_layer/audiobooks_view.dart';
// import '../view_layer/ebooks_view.dart';
// import 'home_page.dart';
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage>
//     with SingleTickerProviderStateMixin {
//   final controller = TabController(length: 2, vsync: AnimatedListState());
//   final List<String> imageSliders = [    'assets/images/slider1.png',    'assets/images/slider2.png',    'assets/images/slider3.png',  ];
//
//   final List<double> tabHeights = [0, 0];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverList(
//             delegate: SliverChildListDelegate(
//               [
//                 const SizedBox(height: MARGIN_MEDIUM_4),
//                 SliderView(imageSliders: imageSliders),
//                 const SizedBox(
//                   height: MARGIN_XXLARGE,
//                 ),
//                 TabBar(
//                   controller: controller,
//                   labelColor: Colors.blue,
//                   indicatorSize: TabBarIndicatorSize.label,
//                   unselectedLabelColor: Colors.grey,
//                   unselectedLabelStyle: const TextStyle(
//                       fontSize: 16, fontWeight: FontWeight.w700),
//                   labelStyle: const TextStyle(
//                       color: Color.fromRGBO(85, 85, 85, 1.0),
//                       fontSize: 16,
//                       fontWeight: FontWeight.w700),
//                   tabs: const [
//                     Tab(
//                       child: Text("Ebooks"),
//                     ),
//                     Tab(
//                       child: Text("Audiobooks"),
//                     )
//                   ],
//                 ),
//                 AnimatedSize(
//                   duration: const Duration(milliseconds: 300),
//                   curve: Curves.easeInOut,
//                   child: SizedBox(
//                     height: tabHeights[controller.index],
//                     child: TabBarView(
//                       controller: controller,
//                       children: [
//                         Builder(
//                           builder: (BuildContext context) {
//                             final Size size =
//                                 (context.findRenderObject() as RenderBox)
//                                     .size;
//                             tabHeights[0] = size.height;
//                             return EbooksView();
//                           },
//                         ),
//                         Builder(
//                           builder: (BuildContext context) {
//                             final Size size =
//                                 (context.findRenderObject() as RenderBox)
//                                     .size;
//                             tabHeights[1] = size.height;
//                             return AudiobooksView();
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
