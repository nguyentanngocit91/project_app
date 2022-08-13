import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:project_app/resources/utils/constants.dart';
import 'package:project_app/resources/widgets/star_rating.dart';
import 'package:project_app/resources/views/product/product_detail_page.dart';
//import 'package:project_app/resources/models/Product.dart';
import 'package:project_app/resources/models/Product_model.dart';
import 'package:project_app/resources/controllers/product_controller.dart';



// ignore: must_be_immutable
class MegaSale extends StatelessWidget {
  
   MegaSale(this.product);
  Product product;
  ProductController productController = Get.put(ProductController());



void initState(){
  //super.initState();
  loadProduct();
}


late int ida=1;

 loadProduct() {
   Get.find<ProductController>().getProductDetail(1);
}

  @override

  Widget build(BuildContext context) {
    var rate=product.rating;
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
           arguments: ProductDetailsArguments(product: productController.productDetail),
      ),
      child:Container(
       width: 133,
       margin:EdgeInsets.all(5),
       child: Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisSize: MainAxisSize.min,
          children: [
            Container(
               width: double.infinity,
               height: 133,
              padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                //border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(
                Radius.circular(5)),),
                child: CachedNetworkImage(
                  imageUrl:'${baseUrl}${product.photo}',
                  fit: BoxFit.cover,
                ),
            ),
            
          Padding(padding: EdgeInsets.all(4.0),),
         
          Flexible( 
          child:Container(
            child:Text(
                   product.name!,
                  overflow: TextOverflow.ellipsis,
                   maxLines: 2,
                   style: const TextStyle(color: Color(0XFF223263),fontWeight:FontWeight.w700,letterSpacing: 0.5,fontSize: 12,),
             ),
            ),
          ),
    
            Padding(padding: EdgeInsets.all(2.0),),

            StarRating(rating:rate!, size: 12),

            Padding(padding: EdgeInsets.all(8.0),),
            Row(
              children: <Widget>[
               Text(
                  NumberFormat.simpleCurrency(locale: 'vi').format(product.sellingPrice),
                  style: TextStyle(color: Color(0XFF40BFFF),fontSize: 12,fontWeight: FontWeight.w700, letterSpacing: 0.5),
                ),
              ],

            ),
   
            Padding(padding: EdgeInsets.all(2.0),),

         
          Row(
          children: <Widget>[
            Text( NumberFormat.simpleCurrency(locale: 'vi').format(product.regularPrice),
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
    ),

    );
    
    

  }
}