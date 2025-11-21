import 'package:flutter/material.dart';

import 'currency_text.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final Offset offset;

  static const blackColor = Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.offset,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offset,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : blackColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CurrencyText(
                    text: name,
                    textColor: isInverted ? blackColor : Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      CurrencyText(
                        text: amount,
                        textColor: isInverted ? blackColor : Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 5),
                      CurrencyText(
                        text: code,
                        textColor: (isInverted ? blackColor : Colors.white)
                            .withAlpha(200),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2,
                child: Transform.translate(
                  offset: Offset(-3, 12),
                  child: Icon(
                    icon,
                    color: isInverted ? blackColor : Colors.white,
                    size: 78,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
