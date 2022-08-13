import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../models/Product_model.dart';

import '../../../widgets/rounded_icon_btn.dart';

import '../../../utils/constants.dart';

import '../../../utils/size_config.dart';

import 'package:project_app/resources/controllers/product_controller.dart';

// ignore: must_be_immutable
class ColorDots extends StatelessWidget {
 ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
 int selectedColor = 3;
 late var colors=product.options![0].values;

    return Container(

       width: double.infinity,
       height:90,
             child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Padding(
                  padding: const EdgeInsets.only(left:20,top: 20),
                  child:  Text("Select Color",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,letterSpacing: 0.5,color:Colors.black,),textAlign: TextAlign.left,),
                ),

                 Padding(
                   padding: const EdgeInsets.only(left:10,bottom: 0),
                   child: Row(

           children: [

              ...List.generate(
            product.options!.length,
              (index) => ColorDot(
               
                color: product,
              ),
            ),
            /* Container(
            margin: EdgeInsets.only(right: 2),
            padding: EdgeInsets.all(8),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border:
                  Border.all(color:Colors.transparent),
              shape: BoxShape.circle,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color(0xFFFFC833),
                shape: BoxShape.circle,
              ),
            ),
          ),


         Container(
            margin: EdgeInsets.only(right: 2),
            padding: EdgeInsets.all(8),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border:
                  Border.all(color:Colors.transparent),
              shape: BoxShape.circle,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color(0xFF40BFFF),
                shape: BoxShape.circle,
              ),
            ),
          ),


          
         Container(
            margin: EdgeInsets.only(right: 2),
            padding: EdgeInsets.all(8),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border:
                  Border.all(color:Colors.transparent),
              shape: BoxShape.circle,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color(0xFFFB7181),
                shape: BoxShape.circle,
              ),
            ),
          ),


          
         Container(
            margin: EdgeInsets.only(right: 2),
            padding: EdgeInsets.all(8),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border:
                  Border.all(color:Colors.transparent),
              shape: BoxShape.circle,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color(0xFF53D1B6),
                shape: BoxShape.circle,
              ),
            ),
          ),


         Container(
            margin: EdgeInsets.only(right: 2),
            padding: EdgeInsets.all(8),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border:
                  Border.all(color:Colors.transparent),
              shape: BoxShape.circle,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color(0xFF5C61F4),
                shape: BoxShape.circle,
              ),
            ),
          ),


             Container(
            margin: EdgeInsets.only(right: 2),
            padding: EdgeInsets.all(8),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border:
                  Border.all(color:Colors.transparent),
              shape: BoxShape.circle,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color(0xFF223263),
                shape: BoxShape.circle,
              ),
            ),
          ),*/


                       ],
                   ),
                 ),

          ] 
      ),

      
    );
  }
}

class ColorDot extends StatelessWidget {
   ColorDot({
    required this.color,
  }) ;

  final Product color;

  @override
  Widget build(BuildContext context) {
    /*return   Container(
            margin: EdgeInsets.only(right: 2),
            padding: EdgeInsets.all(8),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border:
                  Border.all(color:Colors.transparent),
              shape: BoxShape.circle,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color(0xFF223263),
                shape: BoxShape.circle,
              ),
            ),
          );*/

          return  Container(
            margin: EdgeInsets.only(right: 2),
            padding: EdgeInsets.all(8),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border:
                  Border.all(color:Colors.transparent),
              shape: BoxShape.circle,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
               color: Color(0xFF223263),
               
                shape: BoxShape.circle,
              ),
            ),
          );
  }
}