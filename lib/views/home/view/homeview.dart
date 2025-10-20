import 'package:amar_bakr/views/auth/appImage.dart';
import 'package:amar_bakr/views/home/page/Categories.dart';
import 'package:amar_bakr/views/home/page/homPage.dart';
import 'package:amar_bakr/views/home/page/idpage.dart';
import 'package:amar_bakr/views/home/page/myCartpage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
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
        margin: EdgeInsets.symmetric(horizontal: 13),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              blurStyle: BlurStyle.outer,
              offset: Offset(-4, -4),
              color: Color(0xff0000001a),
            ),
            BoxShadow(
              blurRadius: 4,
              blurStyle: BlurStyle.outer,
              offset: Offset(4, 4),
              color: Color(0xff0000001a),
            ),
          ],
          borderRadius: BorderRadius.circular(25),
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
