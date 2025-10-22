import 'package:flutter/material.dart';

class Appformfild extends StatefulWidget {
  final String labol;
  final bool filled;
  final Color fillColor;
  final bool suffixIcon;

  const Appformfild({
    super.key,
    required this.labol,
    required this.filled,
    required this.fillColor,
    this.suffixIcon = true,
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
        fillColor: widget.fillColor,
        filled: widget.filled,
        hint: Text(widget.labol),
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
