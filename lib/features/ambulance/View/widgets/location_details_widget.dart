import 'package:flutter/material.dart';

import '../../../../core/extensions/spacing.dart';
import '../../../../core/extensions/styles.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/widget/selected_square_widget.dart';

class LocationDetailsWidget extends StatelessWidget {
  const LocationDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Column(
              children: [
                const Icon(
                  Icons.radio_button_checked,
                  color: accentGreen,
                  size: 20,
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  width: 1,
                  height: 52,
                  color: textSecondary,
                ),

                SelectedSquareWidget(),
              ],
            ),

            w8,

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pick-up",
                    style: context.bodyMedium.copyWith(fontWeight: FontWeight.w500),
                  ),
                  h2,
                  Text(
                    "Vibhuti Khand, Gomti Nagar, Lucknow, Uttar Pradesh, India",
                    style: context.bodyMedium.copyWith(fontSize: 15),
                  ),

                  h12,

                  Text(
                    "Destination",
                    style: context.bodyMedium.copyWith(fontWeight: FontWeight.w500),
                  ),
                  h2,
                  Text(
                    "Chandra Super Speciality Eye Hospital, near Indra Gandhi Pratishthan & Bank of Baroda House",
                    style: context.bodyMedium.copyWith(fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  }
}
