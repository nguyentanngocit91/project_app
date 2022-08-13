import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../models/Product_model.dart';

import '../../../utils/constants.dart';

import '../../../utils/size_config.dart';

import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';


class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key? key,
    required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;


  final GestureTapCallback? pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
           padding: EdgeInsets.all(20),
          child: Text("Specification",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
       
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 64,
          ),
          child: HtmlWidget( product.contents![0].details.toString()),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  "See More Detail",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: kPrimaryColor),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kPrimaryColor,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}