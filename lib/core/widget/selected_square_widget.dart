import 'package:flutter/material.dart';

import '../utils/colors.dart';

class SelectedSquareWidget extends StatelessWidget {
  const SelectedSquareWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(3), // space between outer & inner
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor, width: 2),
      ),
      child: Container(
        width: 5,
        height: 5,
        decoration: BoxDecoration(
          color: primaryColor,
        ),
      ),
    );
  }
}
