import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.title, required this.price, required this.image, required this.bgColor});
  
  final String title;
  final double price;
  final String image;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleMedium,),
          const SizedBox(
            height: 5,
          ),
          Text('\$$price', style: Theme.of(context).textTheme.bodySmall,),
          const SizedBox(
            height: 5,
          ),
          Center(child: Image.asset(image, height: 175,)),
        ],
      ),
    );
  }
}