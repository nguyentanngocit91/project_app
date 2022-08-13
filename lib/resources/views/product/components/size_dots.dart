import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../models/Product_model.dart';

import '../../../widgets/rounded_icon_btn.dart';

import '../../../utils/constants.dart';

import '../../../utils/size_config.dart';

import 'package:project_app/resources/controllers/product_controller.dart';

// ignore: must_be_immutable
class SizeDots extends StatelessWidget {
  SizeDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

    ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    // Now this is fixed and only for demo
    return Container(

       width: double.infinity,
       child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Padding(
                  padding: const EdgeInsets.only(left:20,top: 20),
                  child:  Text("Select Size",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,letterSpacing: 0.5,color:Colors.black,),textAlign: TextAlign.left,),
                ),

          Padding(
           padding: const EdgeInsets.only(left:10,top: 20),
           child: Row(  
           children: [
             Container(
            margin: EdgeInsets.only(right: 10,left: 10),
            padding: EdgeInsets.all(8),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border:
                  Border.all(color:Color(0xFF40BFFF)),
              shape: BoxShape.circle,
            ),
            child: DecoratedBox(
            child: Align(
                alignment: Alignment.center,
                 child:Text("6",style: TextStyle(fontSize: 14,letterSpacing: 0.5,fontWeight: FontWeight.w700, color: Color(0xFF223263)),),
              ),
              decoration: BoxDecoration(                
                color: Color(0xFFFFF),
                shape: BoxShape.circle,
              ),
            ),
          ),

           Container(
            margin: EdgeInsets.only(right: 10),
           padding: EdgeInsets.all(8),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border:
                  Border.all(color:Color(0xFFEBF0FF)),
              shape: BoxShape.circle,
            ),
            child: DecoratedBox(
            child: Align(
                alignment: Alignment.center,
                 child:Text("6.5",style: TextStyle(fontSize: 14,letterSpacing: 0.5,fontWeight: FontWeight.w700, color: Color(0xFF223263)),),
              ),
              decoration: BoxDecoration(                
                color: Color(0xFFFFF),
                shape: BoxShape.circle,
              ),
            ),
          ),


          Container(
            margin: EdgeInsets.only(right: 10),
           padding: EdgeInsets.all(8),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border:
                  Border.all(color:Color(0xFFEBF0FF)),
              shape: BoxShape.circle,
            ),
            child: DecoratedBox(
            child: Align(
                alignment: Alignment.center,
                 child:Text("7",style: TextStyle(fontSize: 14,letterSpacing: 0.5,fontWeight: FontWeight.w700, color: Color(0xFF223263)),),
              ),
              decoration: BoxDecoration(                
                color: Color(0xFFFFF),
                shape: BoxShape.circle,
              ),
            ),
          ),


          Container(
            margin: EdgeInsets.only(right: 10),
           padding: EdgeInsets.all(8),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border:
                  Border.all(color:Color(0xFFEBF0FF)),
              shape: BoxShape.circle,
            ),
            child: DecoratedBox(
            child: Align(
                alignment: Alignment.center,
                 child:Text("7.5",style: TextStyle(fontSize: 14,letterSpacing: 0.5,fontWeight: FontWeight.w700, color: Color(0xFF223263)),),
              ),
              decoration: BoxDecoration(                
                color: Color(0xFFFFF),
                shape: BoxShape.circle,
              ),
            ),
          ),


Container(
            margin: EdgeInsets.only(right: 10),
           padding: EdgeInsets.all(8),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border:
                  Border.all(color:Color(0xFFEBF0FF)),
              shape: BoxShape.circle,
            ),
            child: DecoratedBox(
            child: Align(
                alignment: Alignment.center,
                 child:Text("8",style: TextStyle(fontSize: 14,letterSpacing: 0.5,fontWeight: FontWeight.w700, color: Color(0xFF223263)),),
              ),
              decoration: BoxDecoration(                
                color: Color(0xFFFFF),
                shape: BoxShape.circle,
              ),
            ),
          ),


          

Container(
            margin: EdgeInsets.only(right: 10),
           padding: EdgeInsets.all(8),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border:
                  Border.all(color:Color(0xFFEBF0FF)),
              shape: BoxShape.circle,
            ),
            child: DecoratedBox(
            child: Align(
                alignment: Alignment.center,
                 child:Text("8.5",style: TextStyle(fontSize: 14,letterSpacing: 0.5,fontWeight: FontWeight.w700, color: Color(0xFF223263)),),
              ),
              decoration: BoxDecoration(                
                color: Color(0xFFFFF),
                shape: BoxShape.circle,
              ),
            ),
          ),



                       ],
                   ),
                 ),

          ] 
      ),

      
    );
  }
}



class SizeDot extends StatelessWidget {
  const SizeDot(this.color);

  final Product color;

  final bool isSelected=false;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFFF6625E),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}