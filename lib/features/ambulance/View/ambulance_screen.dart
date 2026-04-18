import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:meds_cab/core/extensions/spacing.dart';
import 'package:meds_cab/core/utils/colors.dart';
import 'package:meds_cab/features/ambulance/View/widgets/ambulance_card.dart';

import '../../../core/extensions/styles.dart';
import '../../../core/widget/app_bar.dart';
import '../controller/ambulance_controller.dart';

class AmbulanceScreen extends StatelessWidget {
  AmbulanceScreen({super.key});

  final controller = Get.put(AmbulanceController());

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: pinkShade700,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        appBar: CustomAppBar(title: "Book Ambulance"),
        body: Column(
          children: [
            _locationSection(context),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Select Ambulance Type",
                      style: context.bodyMedium.copyWith(fontWeight: FontWeight.w600, fontSize: 18)),
                  Text("(0.22 Km)",
                      style: context.bodyMedium.copyWith(fontWeight: FontWeight.w600, fontSize: 18)),
                ],
              ),
            ),
      
            Expanded(
              child: Obx(() => ListView.builder(
                itemCount: controller.list.length,
                itemBuilder: (_, index) {
                  final item = controller.list[index];
      
                  return AmbulanceCard(
                    data: item,
                    onTap: () => controller.selectItem(index),
                  );
                },
              )),
            ),
            h40,
          ],
        ),
        bottomSheet: _bookButton(context),
      ),
    );
  }
  Widget _locationSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// 🔗 LEFT SIDE (ICON + CONNECTOR LINE)
          Column(
            children: [
              const Icon(
                Icons.radio_button_checked,
                color: accentGreen,
                size: 20,
              ),

              /// connector line
              Container(
                margin: EdgeInsets.symmetric(vertical: 4),
                width: 1,
                height: 52,
                color: textSecondary,
              ),

              redDoubleSquare(),
            ],
          ),

          w8,

          /// 📝 RIGHT SIDE (TEXT)
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
  Widget _bookButton(BuildContext context) {
    return SafeArea(
      /// Set minimum to ensure it only takes required height
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 20), // Reduced bottom padding
        child: Column(
          mainAxisSize: MainAxisSize.min, // This is key
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
                    /// Center Text
                    Center(
                      child: Text(
                        "BOOK NOW",
                        style: context.labelLarge.copyWith(color: kWhite),
                      ),
                    ),

                    /// Right Icon
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
  Widget redDoubleSquare() {
    return Container(
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
