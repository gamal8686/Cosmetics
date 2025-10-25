import 'package:amar_bakr/core/app/appImage.dart';
import 'package:amar_bakr/core/app/appInpot.dart';
import 'package:amar_bakr/core/app/appformfield.dart';
import 'package:amar_bakr/core/helper/goto.dart';
import 'package:flutter/material.dart';

import 'VerifyCode.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  List<DropdownMenuItem> items = [DropdownMenuItem(child: Text('1'))];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(height: 99),
            AppImage(path: 'splash.png', height: 67, width: 51),
            SizedBox(height: 40),
            Text(
              'Create account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff434C6D),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            Appformfild(
              labol: 'Your Name',

              suffixIcon: false,
              filled: false,
              fillColor: Color(0xff5A669066).withValues(alpha: 0.4),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: DropdownButtonFormField(
                    items: items,
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  flex: 3,
                  child: Appformfild(
                    labol: 'Phone Number',
                    suffixIcon: false,
                    filled: false,
                    fillColor: Color(0xff5A669066).withValues(alpha: 0.4),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Appformfild(
              filled: false,
              hint: 'Create your password',
              suffixIcon: true,
            ),
            SizedBox(height: 16),
            Appformfild(
              filled: false,
              hint: 'Confirm password',
              suffixIcon: true,
            ),
            SizedBox(height: 90),
            Center(
              child: FilledButton(onPressed: () {}, child: Text('Next')),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have an account?',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff434C6D),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    goto(VerifyCode());
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600,color: Color(0xffD75D72)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
