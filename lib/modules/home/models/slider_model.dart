class SliderModel {
  final String? tag;
  final String image;
  final String step;
  final String title;
  final String price;
  final List<String> description;

  SliderModel({
    required this.image,
    required this.title,
    required this.description,
    this.tag,
    required this.price,
    required this.step,
  });
}
