import 'package:flutter/material.dart';

class StylizedTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool glow;
  final bool obscureText;

  const StylizedTextField({
    required this.label,
    required this.icon,
    this.glow = true,
    this.obscureText = false,
    Key? key, required controller, required TextInputType keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: glow ? Colors.cyanAccent : Colors.white),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        filled: true,
        fillColor: Colors.black54,
      ),
    );
  }
}