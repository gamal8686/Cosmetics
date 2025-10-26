import 'package:amar_bakr/core/app/appImage.dart';
import 'package:amar_bakr/core/helper/goto.dart';
import 'package:flutter/material.dart';

import '../view/Checkout.dart';

class idpage extends StatelessWidget {
  const idpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Theme.of(context).primaryColor),
          Container(
            height: 152,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0x434C6DD4).withValues(alpha: 0.83),
                  Color(0xffECA4C5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Positioned(
            top: 105,
            right: 160,
            child: CircleAvatar(
              //   backgroundColor: Colors.red,
              maxRadius: 45,
              child: AppImage(path: 'ellipse.png'),
            ),
          ),
          SizedBox(height: 16),
          Positioned(
            right: 140,
            top: 220,
            child: Text(
              'Sara Samer Talaat',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff434C6D),
              ),
            ),
          ),
          SizedBox(height: 40),

          ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 250, horizontal: 10),
            itemBuilder: (context, index) => item(index: index),
            separatorBuilder: (context, index) => Divider(),
            itemCount: model.length,
          ),
          SizedBox(width: 34),
          Positioned(
            bottom: 300,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  AppImage(path: 'Vector.svg'),
                  SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                goto(CheckoutView());
                    },

                     child: Text('Logout',
                       style: TextStyle(
                         fontSize: 14,
                         fontWeight: FontWeight.w600,
                         color: Color(0xffCD0F0F))))

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class item extends StatelessWidget {
  final int index;

  const item({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Row(
        children: [
          model[index].labol,
          SizedBox(width: 3),
          Text(
            'data',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Color(0xff434C6D),
            ),
          ),
          Spacer(),
          IconButton(onPressed: () {}, icon: model[index].labols),
        ],
      ),
    );
  }
}

class iconn {
  final Widget labol;
  final Widget labols;

  iconn(this.labol, this.labols);
}

List<iconn> model = [
  iconn(AppImage(path: 'svg11.svg'), AppImage(path: 'Vector.png')),
  iconn(AppImage(path: 'svg12.svg'), AppImage(path: 'Vector.png')),
  iconn(AppImage(path: 'svg13.svg'), AppImage(path: 'Vector.png')),
  iconn(AppImage(path: 'svg14.svg'), AppImage(path: 'Vector.png')),
  iconn(AppImage(path: 'svg15.svg'), AppImage(path: 'Vector.png')),
];
