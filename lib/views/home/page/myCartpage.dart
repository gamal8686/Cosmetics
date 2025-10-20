import 'package:amar_bakr/views/auth/appImage.dart';
import 'package:amar_bakr/views/auth/appInpot.dart';
import 'package:flutter/material.dart';

class Mycardpage extends StatelessWidget {
  const Mycardpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'My Cart',
              style: TextStyle(
                color: Color(0xff434C6D),
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppImage(path: 'mycar.svg'),
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'You have 4 products in your cart',
                        style: TextStyle(
                          color: Color(0xff434C6D).withValues(alpha: .55),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 0),

              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: _items(),
                ),
                separatorBuilder: (context, index) => Divider(),
                itemCount: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_items() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(8),
              child: AppImage(
                fit: BoxFit.cover,
                height: 100,
                path:
                    'https://www.instyle.com/thmb/rLPYCp3POuu06E6t2k_vXQt-MpA=/fit-in/1500x1000/filters:no_upscale():max_bytes(150000):strip_icc()/rare-beauty-by-selena-gomez-brow-harmony-flexible-lifting-5e251db69f69400eb8f67f9dcdb72630.jpg',
              ),
            ),
            Positioned(top: 4, left: 4, child: AppImage(path: 'delete.svg')),
          ],
        ),
        SizedBox(width: 5),

        Stack(
          children: [
            Text.rich(
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xff3B4569),
              ),
              TextSpan(
                children: [
                  TextSpan(text: 'Note Cosmetics\n'),
                  TextSpan(
                    text: 'Ultra rich mascara for lashes\n\n',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3B4569).withValues(alpha: .73),
                    ),
                  ),
                  TextSpan(text: '350 EGP\n'),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 50,
              child: Container(
                height: 42,
                width: 142,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff8E8EA9)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
