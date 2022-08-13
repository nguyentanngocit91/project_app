import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.pressSeeAll,
  }) : super(key: key);
  final String title;
  final VoidCallback pressSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF223263),fontSize: 14,letterSpacing: 0.5,fontFamily: "Poppins"),
        ),
        TextButton(
          onPressed: pressSeeAll,
          child: const Text(
            "See More",
            style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFF40BFFF),fontSize: 14,letterSpacing: 0.5 ),
          ),
        )
      ],
    );
  }
}
