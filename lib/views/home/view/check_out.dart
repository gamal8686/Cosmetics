import 'package:amar_bakr/core/app/app_Image.dart';
import 'package:amar_bakr/core/app/app_inpot.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: AppImage(path: 'bace.svg'),
          ),
          backgroundColor: Color(0xffD9D9D9),
          title: Center(
            child: Text(
              'Checkout',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff434C6D),
              ),
            ),
          ),
          toolbarHeight: 71,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xff29D3DA1C).withValues(alpha: 0.11),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery to',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff434C6D),
                  ),
                ),
                SizedBox(height: 18),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 84,
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppImage(path: 'map.png', height: 60, width: 100),
                        SizedBox(width: 10),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Home\n',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff434C6D),
                                ),
                              ),
                              TextSpan(
                                text: 'Mansoura, 14 Porsaid St',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff8E8EA9),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 33),
                        TextButton(
                          onPressed: () {},
                          child: AppImage(path: 'DropdownButton.svg'),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 50),
                Text(
                  'Payment Method',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff434C6D),
                  ),
                ),
                SizedBox(height: 18),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 57,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppImage(path: 'visia.svg', height: 32, width: 20),
                          Spacer(),
                          Text('********'),
                          Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: AppImage(path: 'DropdownButton.svg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),

                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 57,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppImage(path: 'offer.svg', height: 32, width: 20),
                          Spacer(),
                          Text(
                            'Add vaucher',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff434C6D),
                            ),
                          ),
                          Spacer(),
                          FilledButton(
                            onPressed: () {},
                            child: Text(
                              'Apply',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Center(
                  child: Text(
                    '---' * 24,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  '- REVIEW PAYMENT',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff434C6D),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'PAYMENT SUMMARY',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff434C6D),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Subtotal',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff434C6D),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '16.100 EGP',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff434C6D),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      'SHIPPING FEES',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff434C6D),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'TO BE CALCULATED',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff434C6D),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Divider(
                  height: 0.2,
                  color: Color(0xff73B9BB),
                ),                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      'TOTAL + VAT',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff434C6D),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '16.100 EGP',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff434C6D),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),

                Center(
                  child: FilledButton(
                      style: FilledButton.styleFrom(
                        fixedSize:Size(230, 60) ,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // 🔹 تصغير الحواف الداخلية
                       // minimumSize: const Size(90, 40),
                      ),
                      onPressed: () {  },
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppImage(

                        path: 'myCard.svg',height: 19,width: 18,),
                      SizedBox(width: 10,),
                      Text('ORDER',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffDBF8F9),
                        ),)
                    ],
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
