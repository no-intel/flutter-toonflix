import 'package:flutter/cupertino.dart';

class CurrencyText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight? fontWeight;

  const CurrencyText({
    super.key,
    required this.text,
    required this.textColor,
    required this.fontSize,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
