import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';

class AppInput extends StatefulWidget {
  final String? path, label;
  final bool DropDown;
  final bool isPassword;
  final bool isKeyboardType;
  final double isBorder;

  const AppInput({
    super.key,
    this.path,
    this.DropDown = false,
    this.label,
    this.isPassword = false,
    this.isKeyboardType = false,
    this.isBorder=8,
  });

  @override
  State<AppInput> createState() => _AppInpotState();
}

class _AppInpotState extends State<AppInput> {
  final list = [10, 20, 30];
  late int selectedCauntryCode;
  bool isHiddn = true;

  @override
  void initState() {
    super.initState();
    selectedCauntryCode = list.first;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.r),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.DropDown)
              Padding(
                padding: EdgeInsetsDirectional.only(end: 10.r),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).inputDecorationTheme.enabledBorder!.borderSide.color,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: DropdownButton<int>(
                    icon: Padding(
                      padding: EdgeInsetsDirectional.only(start: 4.r),
                      child: AppImage(path: 'arrow_down.svg'),
                    ),

                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    value: selectedCauntryCode,
                    items: list
                        .map(
                          (e) => DropdownMenuItem(value: e, child: Text('$e')),
                        )
                        .toList(),
                    onChanged: (value) {
                      selectedCauntryCode = value!;
                      setState(() {});
                    },
                  ),
                ),
              ),

            Expanded(
              child: TextFormField(
                keyboardType: widget.isKeyboardType
                    ? TextInputType.number
                    : TextInputType.name,
                obscureText: widget.isPassword && isHiddn ? true : false,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: EdgeInsets.symmetric(),
                    child: widget.isPassword
                        ? IconButton(
                            onPressed: () {
                              isHiddn = !isHiddn;
                              setState(() {});
                            },
                            icon: AppImage(
                              path: isHiddn
                                  ? 'visibility_on.svg'
                                  : 'visibility_off.svg',
                            ),
                          )
                        : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AppImage(

                          path: 'search.svg'),
                        ),
                          ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),

                  labelText: widget.label,
                  filled: true,
                  fillColor: Color(0xffD9D9D9),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.isBorder),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
