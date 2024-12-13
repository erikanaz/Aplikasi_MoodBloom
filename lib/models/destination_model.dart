class DestinationItem {
  final String title;
  final String imagePath;
  final double rating;

  DestinationItem({
    required this.title,
    required this.imagePath,
    required this.rating,
  });
}

final List<DestinationItem> destinationList = [
  DestinationItem(
    title: "Taman Labirin",
    imagePath: "assets/taman_labirin.jpeg",
    rating: 4.9,
  ),
  DestinationItem(
    title: "Taman Prancis",
    imagePath: "assets/taman_prancis.jpeg",
    rating: 4.8,
  ),
  DestinationItem(
    title: "Taman Jepang",
    imagePath: "assets/taman_jepang.jpeg",
    rating: 4.8,
  ),
];
