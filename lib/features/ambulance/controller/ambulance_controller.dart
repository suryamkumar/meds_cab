import 'package:get/get.dart';

import '../model/ambulance_model.dart';

class AmbulanceController extends GetxController {
  var list = <Ambulance>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  void loadData() {
    list.value = [
      Ambulance(
        title: "Patient Transfer",
        subtitle: "Eeco, Omni",
        price: "₹1200",
        time: "10 Min",
        isSelected: true,
      ),
      Ambulance(
        title: "Basic Life Support",
        subtitle: "Bolero, Force",
        price: "₹1800",
        time: "12 Min",
      ),
      Ambulance(
        title: "Advanced Life Support",
        subtitle: "ICU Ambulance",
        price: "₹2500",
        time: "15 Min",
      ),
      Ambulance(
        title: "Oxygen Ambulance",
        subtitle: "Oxygen Support",
        price: "₹2000",
        time: "14 Min",
      ),
      Ambulance(
        title: "Mortuary Ambulance",
        subtitle: "Dead Body Transfer",
        price: "₹1500",
        time: "20 Min",
      ),
      Ambulance(
        title: "Cardiac Ambulance",
        subtitle: "Heart Emergency",
        price: "₹2800",
        time: "18 Min",
      ),
      Ambulance(
        title: "Neonatal Ambulance",
        subtitle: "Infant Care Unit",
        price: "₹3000",
        time: "22 Min",
      ),
      Ambulance(
        title: "Air Ambulance",
        subtitle: "Emergency Air Service",
        price: "₹15000",
        time: "30 Min",
      ),
    ];
  }

  void selectItem(int index) {
    list.value = list.map((ambulance) => ambulance.copyWith(isSelected: false)).toList();

    list[index] = list[index].copyWith(isSelected: true);
  }
}