class Ambulance {
  final String title;
  final String subtitle;
  final String price;
  final String time;
  final bool isSelected;

  Ambulance({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.time,
    this.isSelected = false,
  });

  Ambulance copyWith({bool? isSelected}) {
    return Ambulance(
      title: title,
      subtitle: subtitle,
      price: price,
      time: time,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}