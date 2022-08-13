import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:project_app/resources/utils/constants.dart';

import 'package:project_app/resources/widgets/star_rating.dart';
import 'package:project_app/resources/models/products_model_old.dart';



// ignore: must_be_immutable
class MegaSaleIndex extends StatelessWidget {
  MegaSaleIndex(this.product);

  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: const BorderRadius.all(
                Radius.circular(5)),
              
              ),
              child: CachedNetworkImage(
                width: 133,
                height: 133,
                imageUrl: product.image!,
                fit: BoxFit.cover,
              ),
            ),
        
             Padding(padding: EdgeInsets.all(4.0),),
            Row(
              children: [
                Expanded(
                  child: Text(
                    product.title!,
                    style: const TextStyle(color: Color(0XFF223263),fontWeight:FontWeight.w700,letterSpacing: 0.5,fontSize: 12,),
                  ),
                ),
              
              ],
            ),

            Padding(padding: EdgeInsets.all(2.0),),

            StarRating(rating: 5, size: 12),

             Padding(padding: EdgeInsets.all(8.0),),
             
            Row(
              children: [
               Text(
                  NumberFormat.simpleCurrency(locale: 'vi').format(product.price!),
                  style: TextStyle(color: Color(0XFF40BFFF),fontSize: 12,fontWeight: FontWeight.w700, letterSpacing: 0.5),
                ),
              ],

            ),

        Padding(padding: EdgeInsets.all(2.0),),

        Row(
          children: <Widget>[
            Text( NumberFormat.simpleCurrency(locale: 'vi').format(product.price!),
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
    );
  }
}