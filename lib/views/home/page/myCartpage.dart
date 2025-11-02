import 'package:amar_bakr/core/app/app_Image.dart';
import 'package:flutter/material.dart';

class Mycardpage extends StatelessWidget {
  const Mycardpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // left: false,
      // right: false,
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
              padding: const EdgeInsets.all(10.0),
              child: AppImage(path: 'mycar.svg'),
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.all(5.0),
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
              SizedBox(height: 5),

              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    Padding(padding: const EdgeInsets.all(10), child: _items()),
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

class _items extends StatefulWidget {
  const _items({super.key});

  @override
  State<_items> createState() => _itemsState();
}

class _itemsState extends State<_items> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topLeft,
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
            AppImage(path: 'delete.svg',height: 20,width:
              20,),
          ],
        ),
        SizedBox(width: 8),
        Column(
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
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff8E8EA9)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () {
                        counter--;
                        setState(() {});
                      },
                      child: AppImage(path: 'Group+.svg'),
                    ),
                    TextButton(onPressed: () {}, child: Text('$counter')),
                    TextButton(
                      onPressed: () {
                        counter++;
                        setState(() {});
                      },
                      child: AppImage(path: 'Group-.svg'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
