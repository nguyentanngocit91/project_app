import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../models/Product_model.dart';

import '../../../utils/constants.dart';

import '../../../utils/size_config.dart';

import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import 'package:project_app/resources/widgets/star_rating.dart';
import 'package:intl/intl.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
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
           padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Text(
            product.name!,
            style: TextStyle(fontSize: 20,letterSpacing: 0.5,color: Color(0xFF223263),fontWeight: FontWeight.w700),
          ),
        ),

      Padding(
           padding: EdgeInsets.only(left: 20,bottom: 10),
          child:StarRating(rating:product.rating!, size: 16),
        ),

         Padding(
           padding: EdgeInsets.only(left: 20,bottom: 10),
          child:  Row(
              children: <Widget>[
               Text(
                  NumberFormat.simpleCurrency(locale: 'vi').format(product.sellingPrice),
                  style: TextStyle(color: Color(0XFF40BFFF),fontSize: 20,fontWeight: FontWeight.w700, letterSpacing: 0.5),
                ),
              ],

            ),
        ),


    /*Positioned(
        top: 100,
        right: 0,
        child:  Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(15),
            width: 64,
            decoration: BoxDecoration(
              color:
                  product.isPublish! ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: SvgPicture.asset(
              "icons/HeartIcon_2.svg",
              color:
                  product.isPublish! ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
              //height: getProportionateScreenWidth(16),
              height: 16,
            ),
          ),
        ),)*/
  

        
        /*Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 64,
          ),
          child: Text(
            product.contents![0].description.toString(),
            maxLines: 3,
          ),
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
        )*/
      ],
    );
  }
}