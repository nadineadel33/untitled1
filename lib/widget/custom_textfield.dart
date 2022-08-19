import 'package:flutter/material.dart';
class CustomeTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  CustomeTextField({required this.icon,required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        cursorColor: Color(0xfff0ad1e),
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(
            icon,
          ),
          filled: true,
          fillColor: Color(0xfff6e29d),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Colors.white
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Colors.white
              )
          ),
        ),
      ),
    );
  }
}
