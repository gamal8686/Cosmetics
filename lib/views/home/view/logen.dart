import 'package:amar_bakr/core/app/appImage.dart';
import 'package:amar_bakr/core/app/appformfield.dart';
import 'package:amar_bakr/core/helper/goto.dart';
import 'package:flutter/material.dart';

import 'Createaccount.dart';
import 'homeview.dart';

class logenview extends StatefulWidget {
  const logenview({super.key});

  @override
  State<logenview> createState() => _logenviewState();
}

class _logenviewState extends State<logenview> {
  List<DropdownMenuItem<int>> itemss = [
    DropdownMenuItem(value: 1, child: Text("1")),
    DropdownMenuItem(value: 2, child: Text("2")),
    DropdownMenuItem(value: 3, child: Text("3")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          SizedBox(height: 60),

          AppImage(path: 'login.png'),
          SizedBox(height: 24),
          Center(
            child: Text(
              'Login Now',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 14),
          Center(
            child: Text(
              'Please enter the details below to continue',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 25),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Color(0xff5a669066), // نفس لون الخلفية اللي عندك
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey), // هنا الإطار
                ),
                child: DropdownButtonHideUnderline(
               
                  child: DropdownButton<int>(
                    hint: Text('+2'),
                    items: itemss,
                    onChanged: (value) {},
                  ),
                ),
              ),

              SizedBox(width: 8),
              Expanded(
                child: Appformfild(
                  suffixIcon: false,
                  labol: 'Phone Number',
                  filled: true,
                  fillColor: Color(0x5A669066),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Appformfild(
            suffixIcon: true,
            labol: 'Your Password',
            filled: true,
            fillColor: Color(0x5A669066),
          ),

          SizedBox(height: 10),

          TextButton(
            onPressed: () {},
            child: Text(
              'Forget Password?',
              style: TextStyle(
                color: Colors.red,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 40),
          MaterialButton(
            minWidth: double.infinity,
            height: 65,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(15),
            ),

            color: Color(0xffD75D72),
            onPressed: () {
              goto(Homeview());
            },
            child: Text('Login'),
          ),
          SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 30),
              Text('  Don’t have an account?'),
              TextButton(
                onPressed: () {
                  goto(CreateAccount());
                },
                child: Text('Register', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
