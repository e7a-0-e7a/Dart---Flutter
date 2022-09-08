import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String buttonText;
  final Color color;
  final double elevationShadow;

  const CustomButton(
      {Key? key,
      required this.onPressed,
      required this.buttonText,
      required this.color,
      required this.elevationShadow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Material(
        borderRadius: BorderRadius.circular(8),
        elevation: elevationShadow,
        child: Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: color),
          child: Center(
            child: Text(
              buttonText,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
