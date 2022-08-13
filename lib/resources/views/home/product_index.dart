
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'package:project_app/resources/utils/constants.dart';

import 'package:project_app/resources/widgets/star_rating.dart';

final formatCurrency = NumberFormat.simpleCurrency();

class ProductIndex extends StatelessWidget {
  const ProductIndex({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.press,
    required this.bgColor,
  }) : super(key: key);
  final String image, title,description;
  final VoidCallback press;
  final double price;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 200,
        margin: const EdgeInsets.all(defaultPadding / 2),
         padding: const EdgeInsets.all(defaultPadding / 2),
        decoration:  BoxDecoration(
          color: Colors.white,
         borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: Color(0XFFEBF0FF)),
        ),
        
        child: Column(
          
          children: [
            
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.all(
                Radius.circular(5)),
              
              ),
              child: Image.network(
                image,
                height: 133,
              ),
            ),
        
             Padding(padding: EdgeInsets.all(4.0),),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(color: Color(0XFF223263),fontWeight:FontWeight.w700,letterSpacing: 0.5,fontSize: 12,),
                  ),
                ),
              
              ],
            ),

            Padding(padding: EdgeInsets.all(2.0),),

            StarRating(rating: 4, size: 12),

             Padding(padding: EdgeInsets.all(8.0),),
             
            Row(
              children: [
               Text(
                  NumberFormat.simpleCurrency(locale: 'vi').format(price),
                  style: TextStyle(color: Color(0XFF40BFFF),fontSize: 12,fontWeight: FontWeight.w700, letterSpacing: 0.5),
                ),
              ],

            ),

        Padding(padding: EdgeInsets.all(2.0),),

        Row(
          children: <Widget>[
            Text( NumberFormat.simpleCurrency(locale: 'vi').format(price),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF9098B1),
                    decoration: TextDecoration.lineThrough)),
            Padding(padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),),
            Text(
              '24% Off',
              style: TextStyle(
                  color: Color(0XFFFB7181),
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  ),
            )
          ],
        ),

          ],
        ),
      ),
    );
  }
}
