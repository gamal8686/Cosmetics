
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'pages/categories_page.dart';
import 'pages/home_page.dart';
import 'pages/my_cart.dart';
import 'pages/profile.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _HomeviewState();
}

class _HomeviewState extends State<ViewHome> {
  List<_model> pages = [
    _model(image: 'assets/icons/home.svg', page: Homepage()),
    _model(image: 'assets/icons/categories.svg', page: Categorypage()),
    _model(image: 'assets/icons/my_cart.svg', page: Mycardpage()),
    _model(image: 'assets/icons/profile.svg', page: idpage()),
  ];
  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex].page,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.symmetric(horizontal: 13.w),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 6.r,
              blurStyle: BlurStyle.outer,
              offset: Offset(-4, -4),
              color: Color(0xff0000001a),
            ),
            BoxShadow(
              blurRadius: 4.r,
              blurStyle: BlurStyle.outer,
              offset: Offset(4, 4),
              color: Color(0xff0000001a),
            ),
          ],
          borderRadius: BorderRadius.circular(25.r),
          border: Border.all(color: Color(0xffD9D9D9)),
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            currentIndex = value;
            setState(() {});
          },

          currentIndex: currentIndex,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          elevation: 0,
          items: List.generate(
            4,
            (index) => BottomNavigationBarItem(
              label: '',
              icon: SvgPicture.asset(
                pages[index].image,
                color: currentIndex == index ? Color(0xffECA4C5) : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _model {
  final String image;
  final Widget page;

  _model({required this.image, required this.page});
}
