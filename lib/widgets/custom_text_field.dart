import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    this.hint,
    this.prefix,
    this.suffix,
    this.obscure = false,
    this.textInputType,
    this.onChanged,
    this.enabled,
    this.controller,
  });

  final TextEditingController controller;
  final String hint;
  final Widget prefix;
  final Widget suffix;
  final bool obscure;
  final TextInputType textInputType;
  final Function(String) onChanged;
  final bool enabled;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(32),
      ),
      padding: widget.prefix != null ? null : const EdgeInsets.only(left: 16),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscure,
        keyboardType: widget.textInputType,
        onChanged: widget.onChanged,
        enabled: widget.enabled,
        decoration: InputDecoration(
          hintText: widget.hint,
          border: InputBorder.none,
          prefixIcon: widget.prefix,
          suffixIcon: widget.suffix,
        ),
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}
