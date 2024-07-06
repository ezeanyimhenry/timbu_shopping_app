class Product {
  final String name;
  final String description;
  final String uniqueId;
  final bool isAvailable;
  final String imageUrl;

  Product({
    required this.name,
    this.description = '',
    required this.uniqueId,
    required this.isAvailable,
    this.imageUrl = '',
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    String imageUrl = '';
    if (json['photos'] != null && json['photos'].isNotEmpty) {
      imageUrl = json['photos'][0]['url'];
      // Check if the URL is relative and make it absolute
      if (!imageUrl.startsWith('http')) {
        imageUrl = 'https://api.timbu.cloud/images/$imageUrl';
      }
    }

    return Product(
      name: json['name'],
      description: json['description'] ?? '',
      uniqueId: json['unique_id'],
      isAvailable: json['is_available'],
      imageUrl: imageUrl,
    );
  }
}
