import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onpressed,
    this.size = 28,
    this.color = Colors.white,
  });
  final Color color;
  final VoidCallback onpressed;
  final double size;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onpressed,
      icon: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white.withOpacity(
              0.15,
            )),
        child: Icon(
          icon,
          size: size,
          color: color,
        ),
      ),
    );
  }
}
