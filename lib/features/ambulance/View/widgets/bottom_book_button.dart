import 'package:flutter/material.dart';

import '../../../../core/extensions/styles.dart';
import '../../../../core/utils/colors.dart';

class BottomBookButton extends StatelessWidget {
  const BottomBookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: pinkShade700,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                      child: Text(
                        "BOOK NOW",
                        style: context.labelLarge.copyWith(color: kWhite),
                      ),
                    ),

                    const Positioned(
                      right: 12,
                      child: Icon(Icons.arrow_forward, color: kWhite),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
