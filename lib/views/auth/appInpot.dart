import 'package:amar_bakr/views/auth/appImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppInpot extends StatelessWidget {
  const AppInpot({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: SvgPicture.asset(
            'assets/svg/search.svg',
            height: 17,
            width: 17,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffB3B3C1)),
          borderRadius: BorderRadius.circular(25),
        ),
        hint: Text(
          'Search',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        filled: true,
        fillColor: Color(0xffD9D9D9),
      ),
    );
  }
}
