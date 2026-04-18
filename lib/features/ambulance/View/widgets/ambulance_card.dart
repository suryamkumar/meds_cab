import 'package:flutter/material.dart';
import 'package:meds_cab/core/utils/colors.dart';

import '../../../../core/extensions/spacing.dart';
import '../../../../core/extensions/styles.dart';
import '../../model/ambulance_model.dart';

class AmbulanceCard extends StatelessWidget {
  final Ambulance data;
  final VoidCallback onTap;

  const AmbulanceCard({
    required this.data,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = data.isSelected;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected
              ? accentTeal.withOpacity(0.08)
              : kWhite,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? accentTeal : borderColor,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: isSelected ? accentTeal.withValues(alpha: 0.12) : textSecondary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.local_shipping,
                    color: isSelected ? primaryColor : textSecondary,
                  ),
                ),
                h4,
                Text(data.time,
                    style: context.bodySmall),
              ],
            ),

            w12,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data.title,
                      style: context.titleMedium.copyWith(
                        fontWeight: FontWeight.w600,
                      )),
                  h4,
                  Text('Vehicles: ${data.subtitle}', style: context.bodyMedium),

                ],
              ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(data.price,
                    style: context.titleMedium.copyWith(
                      color: textSecondary,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    )),
                w4,
                Icon(Icons.info,
                    size: 20, color: warningRed),
              ],
            )
          ],
        ),
      ),
    );
  }
}