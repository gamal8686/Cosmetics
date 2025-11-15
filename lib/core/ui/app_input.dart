import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';

class AppInpot extends StatefulWidget {
  final String? path, labol;
  final bool drobDowen;
  final bool ispassword;

  final bool iskeyboardType;

  const AppInpot({
    super.key,
    this.path,
    this.drobDowen = false,
    this.labol,
    this.ispassword = false,
    this.iskeyboardType = false,
  });

  @override
  State<AppInpot> createState() => _AppInpotState();
}

class _AppInpotState extends State<AppInpot> {
  final list = [10, 20, 30];
  late int selectedCauntryCod;
  bool ishedin = true;

  @override
  void initState() {
    super.initState();
    selectedCauntryCod = list.first;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.r),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.drobDowen)
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
                    value: selectedCauntryCod,
                    items: list
                        .map(
                          (e) => DropdownMenuItem(value: e, child: Text('$e')),
                        )
                        .toList(),
                    onChanged: (value) {
                      selectedCauntryCod = value!;
                      setState(() {});
                    },
                  ),
                ),
              ),

            Expanded(
              child: TextFormField(
                keyboardType: widget.iskeyboardType
                    ? TextInputType.number
                    : TextInputType.name,
                obscureText: widget.ispassword && ishedin ? true : false,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: EdgeInsets.symmetric(),
                    child: widget.ispassword
                        ? IconButton(
                            onPressed: () {
                              ishedin = !ishedin;
                              setState(() {});
                            },
                            icon: AppImage(
                              path: ishedin
                                  ? 'visability_on.svg'
                                  : 'visability_off.svg',
                            ),
                          )
                        : IconButton(
                            onPressed: () {},
                            icon: AppImage(path: 'search.svg'),
                          ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),

                  labelText: widget.labol,
                  filled: true,
                  fillColor: Color(0xffD9D9D9),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
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
