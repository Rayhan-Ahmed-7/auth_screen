import 'package:flutter/material.dart';
import 'package:login_screen/constants/styles.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.isPassword = false,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        obscureText: widget.isPassword && !_isPasswordVisible,
        decoration: InputDecoration(
          labelText: widget.hintText,
          labelStyle: TextStyle(color: Colors.grey[600]),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          prefixIcon: Icon(widget.prefixIcon, color: Colors.grey),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                )
              : (widget.suffixIcon != null
                  ? Icon(widget.suffixIcon, color: Colors.grey)
                  : null),
          // Borders
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                const BorderSide(color: AppStyles.primaryColor, width: 2.0),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
        ),
      ),
    );
  }
}
