import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:meds_cab/core/extensions/spacing.dart';
import 'package:meds_cab/core/utils/colors.dart';
import 'package:meds_cab/features/ambulance/View/widgets/ambulance_card.dart';
import 'package:meds_cab/features/ambulance/View/widgets/bottom_book_button.dart';
import 'package:meds_cab/features/ambulance/View/widgets/location_details_widget.dart';

import '../../../core/extensions/styles.dart';
import '../../../core/widget/app_bar.dart';
import '../controller/ambulance_controller.dart';

class AmbulanceScreen extends StatelessWidget {
  AmbulanceScreen({super.key});

  final controller = Get.put(AmbulanceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Book Ambulance"),
      body: Column(
        children:
        [
          LocationDetailsWidget(),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text("Select Ambulance Type", style: context.bodyMedium.copyWith(fontWeight: FontWeight.w600, fontSize: 18))),
                Text("(0.22 Km)", style: context.bodyMedium.copyWith(fontWeight: FontWeight.w600, fontSize: 18)),
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
          h60,
        ],
      ),
      bottomSheet: BottomBookButton(),
    );
  }
}
