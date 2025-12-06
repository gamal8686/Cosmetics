import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';

class AppInput extends StatefulWidget {
  final TextEditingController? controller;
  final void Function(String)? onSelectedCountryCode;
  final String? Function(String?)? validator;
  final String? path, label;
  final bool DropDown;
  final bool isPassword;
  final bool isKeyboardType;
  final double isBorder;
  final bool? isLottieControlled;

  const AppInput({
    super.key,
    this.path,
    this.DropDown = false,
    this.label,
    this.isPassword = false,
    this.isKeyboardType = false,
    this.isBorder = 8,
    this.controller,
    this.onSelectedCountryCode,
    this.validator,
    this.isLottieControlled,
  });

  @override
  State<AppInput> createState() => _AppInpotState();
}

class _AppInpotState extends State<AppInput> {
  final list = ['10', '20', '30'];
  late String selectedCountryCode;
  bool isHidden = true;

  @override
  void initState() {
    super.initState();
    selectedCountryCode = list.first;
    widget.onSelectedCountryCode?.call(selectedCountryCode);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.r),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: DropdownButton<String>(
                    icon: Padding(
                      padding: EdgeInsetsDirectional.only(start: 4.r),
                      child: AppImage(path: 'arrow_down.svg'),
                    ),

                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    value: selectedCountryCode,
                    items: list
                        .map(
                          (e) => DropdownMenuItem(value: e, child: Text('$e')),
                        )
                        .toList(),
                    onChanged: (value) {
                      selectedCountryCode = value!;
                      widget.onSelectedCountryCode?.call!(selectedCountryCode);
                      setState(() {});
                    },
                  ),
                ),
              ),

            Expanded(
              child: TextFormField(
                validator: widget.validator,
                controller: widget.controller,
                keyboardType: widget.isKeyboardType
                    ? TextInputType.number
                    : TextInputType.name,
                obscureText: widget.isPassword && isHidden,
                decoration: InputDecoration(
                  suffixIcon:
                  widget.isPassword
                      ?  Padding(
                        padding: const EdgeInsets.all(12),
                        child: AppImage(
                              isLottieControlled: (p0) {
                                isHidden=!isHidden;
                                setState(() {

                                });
                              },
                              height: 30,
                              path: 'password_view.json',

                          ),
                      )
                      : null,

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
