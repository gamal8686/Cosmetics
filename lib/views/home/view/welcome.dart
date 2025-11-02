import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/app/app_Image.dart';
import '../../../core/helper/goto.dart';

import '../view/logen.dart';

class onpordengview extends StatefulWidget {
  const onpordengview({super.key});

  @override
  State<onpordengview> createState() => _onpordengviewState();
}

class _onpordengviewState extends State<onpordengview> {
  int counter = 0;
  List image = [
'onpordeng1.png'
    ,  'onporning2.png'
    ,
     'onporning3.png'
    ,
  ];
  List Descrbshen = ['WELCOME', 'SEARCH & PICK', 'PUCH NOTIFICATIONS '];
  List Test = [
    'Makeup has the power to transform your mood and empowers you to be a more confident person.',
    'We have dedicated set of products and routines hand picked for every skin type.',
    'Allow notifications for new makeup & cosmetics offers.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
AppImage(path:image[counter]),
              SizedBox(height: 25),
              Text(
                Descrbshen[counter],
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),

              Text(Test[counter], style: TextStyle(fontSize: 16)),
              SizedBox(height: 30),

              counter == 2
                  ? FilledButton(
                      style: FilledButton.styleFrom(fixedSize: Size(350, 60)),
                      onPressed: () {
                        goto(logenview());
                      },
                      child: AppImage(path: 'goto.svg'),
                    )
                  : FloatingActionButton(
                      backgroundColor: Color(0xff434C6D),
                      onPressed: () {
                        if (counter < 2) {
                          counter++;
                          setState(() {});
                        } else {
                          goto(logenview());
                        }
                      },
                      child: AppImage(path: 'goto.svg'),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
