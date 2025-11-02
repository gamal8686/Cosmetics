import 'package:flutter/material.dart';

class Appformfild extends StatefulWidget {
  final String? labol;
  final bool filled;
  final Color? fillColor;
  final bool suffixIcon;
final String? hint;
  const Appformfild({
    super.key,
   this.labol,
    required this.filled,
    this.fillColor,
    this.suffixIcon = true, this.hint,
  });

  @override
  State<Appformfild> createState() => _AppformfildState();
}

class _AppformfildState extends State<Appformfild> {
  bool iscan = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),

        ),
labelText: widget.labol,
        fillColor: widget.fillColor,
        filled: widget.filled,
        hintText:widget.hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        suffixIcon: widget.suffixIcon
            ? IconButton(
                icon: Icon(iscan ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    iscan = !iscan;
                  });
                },
              )
            : null,
      ),
    );
  }
}
