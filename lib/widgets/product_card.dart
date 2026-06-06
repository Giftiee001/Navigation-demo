import 'package:flutter/material.dart';
import '../models/product.dart';

/// One row in the product list: a coloured block with the food name on the
/// left, and the description, price, and rating stars on the right.
///
/// Depends only on a single [Product] and an [onTap] callback, so it has no
/// knowledge of navigation or the rest of the app.
class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 125,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Coloured block with the food name (like the slide's "pixel 1").
              Container(
                width: 130,
                color: product.color,
                alignment: Alignment.center,
                child: Text(
                  product.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Description, price, and stars.
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        product.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Price: ${product.price} RWF',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      RatingStars(rating: product.rating),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// A simple row of 5 stars; the first [rating] stars are filled.
class RatingStars extends StatelessWidget {
  final int rating;
  final double size;

  const RatingStars({super.key, required this.rating, this.size = 18});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        final filled = index < rating;
        return Icon(
          filled ? Icons.star : Icons.star_border,
          color: Colors.redAccent,
          size: size,
        );
      }),
    );
  }
}
