import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final double size;
  StarRating({required this.rating, required this.size});
  @override
  Widget build(BuildContext context) {
    return Row(
        children: new List.generate(5, (index) => _buildStar(index, rating)));
  }

  _buildStar(int index, double rating) {
    IconData icon;
    Color color;
    if (index >= rating) {
      icon = Icons.star;
      color = Color(0XFFEBF0FF);
    } else if (index > rating - 1 && index < rating) {
      icon = Icons.star_half;
      color = Color(0XFFFFC833);
    } else {
      icon = Icons.star;
      color = Color(0XFFFFC833);
    }
    return Icon(
      icon,
      color: color,
      size: size,
    );
  }
}