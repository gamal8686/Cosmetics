
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'home/categories_page.dart';
import 'home/home_Page.dart';
import 'home/profile.dart';
import 'home/my_cart.dart';

class OnBordenge extends StatefulWidget {
  const OnBordenge({super.key});

  @override
  State<OnBordenge> createState() => _HomeviewState();
}

class _HomeviewState extends State<OnBordenge> {
  List<_model> pages = [
    _model(image: 'assets/svg/home.svg', page: Homepage()),
    _model(image: 'assets/svg/nat.svg', page: Categorypage()),
    _model(image: 'assets/svg/myCard.svg', page: Mycardpage()),
    _model(image: 'assets/svg/person.svg', page: idpage()),
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
