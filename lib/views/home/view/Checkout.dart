import 'package:amar_bakr/core/app/appImage.dart';
import 'package:flutter/material.dart';


class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            
          }, icon: AppImage(path: 'bace.svg')),
          backgroundColor: Color(0xffD9D9D9),
          title: Center(child: Text('Checkout',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff434C6D))),),
          toolbarHeight: 71,
        ),
        body: Container(
          color: Color(0xff29D3DA1C).withValues(alpha: 0.11),
        ),
      ),
    );
  }
}
