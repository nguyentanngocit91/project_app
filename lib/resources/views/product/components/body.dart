import 'package:flutter/material.dart';
import '../../../widgets/default_button.dart';
import '../../../utils/size_config.dart';
import '../../../models/Product_model.dart';


import 'color_dots.dart';
import 'size_dots.dart';
import 'product_description.dart';
import 'product_detail.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body:  ListView(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),


                SizeDots(product: product),

                ColorDots(product: product),

               

               /* TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                    
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left:0.15,
                            right:0.15,
                            bottom:40,
                            top:15,
                            
                          ),

                        

                          /*child: DefaultButton(
                            text: "Add To Cart",
                            press: () {},
                          ),*/
                        ),
                      ),
             

                    ],
                    
                  ),
                  
                  
                ),*/

                   Container(
                  child:   ProductDetail(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                        
                      ),
                
                
              ],
              
            ),
            
            
          ),
          
          
        ],
        
      ),
          bottomNavigationBar: DefaultButton(
                            text: "Add To Cart",
                            press: () {},
                          ),

      );

       
    
  }
}