import 'dart:io';

import 'package:amar_bakr/views/auth/appImage.dart';
import 'package:amar_bakr/views/auth/appInpot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                AppInpot(),
                SizedBox(height: 13),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.network(
                      'https://tse1.mm.bing.net/th/id/OIP.kR2OWGKMJyYRyZJr_NSWrAHaD4?cb=12ucfimg=1&w=1200&h=630&rs=1&pid=ImgDetMain&o=7&rm=3',
                      fit: BoxFit.cover,
                      height: 320,
                      width: double.infinity,
                    ),
                    Container(
                      height: 151,
                      width: double.infinity,
                      color: Color(0xffE9DCD3).withValues(alpha: .5),
                    ),

                    SizedBox(height: 5),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '50% OFF DISCOUNT\nCUPON CODE : 125865',
                                ),
                              ),
                              SizedBox(width: 85),
                              SvgPicture.asset(
                                'assets/svg/offer.svg',
                                height: 60,
                                width: 60,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: SvgPicture.asset('assets/svg/offer.svg'),
                              ),
                              SizedBox(width: 120),
                              Text('50% OFF DISCOUNT\nCUPON CODE : 125865'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Top rated products',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff434C6D),
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Container(
                  child: GridView.builder(
                    itemCount: 10,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 12,
                      childAspectRatio: 176 / 237,
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                    ),

                    itemBuilder: (context, index) => items(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

items() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      color: Color(0xffD9D9D9),
      boxShadow: [
        BoxShadow(
          blurRadius: 10,
          color: Color(0xff00000040).withValues(alpha: .25),
          offset: Offset(0, 1),
          blurStyle: BlurStyle.normal,
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            child: AppImage(
              fit: BoxFit.cover,
              height: 150,
              width: double.infinity,
              path:
                  'https://www.elfcosmetics.com/dw/image/v2/BBXC_PRD/on/demandware.static/-/Sites-elf-master/default/dwec39891d/2021/12142020_HydratingCore-LipShine_COMP_V2_IGF.jpg?sw=425&q=90',
            ),
          ),
          SizedBox(height: 11),
          Expanded(
            child: Text(
              'Athe Red lipstick',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 11),
          Expanded(
            child: Text(
              '\$44.99',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
