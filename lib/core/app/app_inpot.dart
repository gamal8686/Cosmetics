import 'package:amar_bakr/core/app/app_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppInpot extends StatefulWidget {
  final String? path, labol;
  final bool drobDowen;
 final bool ispassword
  ;


  const AppInpot({super.key, this.path, this.drobDowen = false, this.labol,  this.ispassword=false});

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
        padding: const EdgeInsets.only(bottom: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.drobDowen)
              Padding(
                padding: EdgeInsetsDirectional.only(end: 10),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).inputDecorationTheme.enabledBorder!.borderSide.color,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButton<int>(
                    icon: Padding(
                      padding: EdgeInsetsDirectional.only(start: 4),
                      child: AppImage(path: 'DropdownButton.svg'),
                    ),

                    padding: EdgeInsets.symmetric(horizontal: 16),
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

                obscureText: widget.ispassword&&ishedin?true:false,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    child: widget.ispassword? IconButton(
                      onPressed: () {
                        ishedin = !ishedin;
                        setState(() {});
                      },
                      icon: AppImage(path:ishedin? 'Vectoron.svg':'VectorOff.svg')

                    ):null
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),

                  labelText: widget.labol,
                  filled: true,
                  fillColor: Color(0xffD9D9D9),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
