class BrandItem {
  final String imageUrl;
  final String title;
  final String id;
  bool isSelected;

  BrandItem({
    required this.imageUrl,
    required this.title,
    required this.id,
    this.isSelected = false,
  });
}
