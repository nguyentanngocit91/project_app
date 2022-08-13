import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../utils/constants.dart';

import '../../../utils/size_config.dart';

import '../../../models/Product_model.dart';

class CustomAppBar extends StatelessWidget {
   final Product product;

  CustomAppBar({required this.product});

  // AppBar().preferredSize.height provide us the height that appy on our app bar
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {

    var rate=product.rating;
    return SafeArea(
   //   child: Text("data"),
   
     child: Container(
        width: double.infinity,
       child: Padding(
         
          padding: EdgeInsets.only(left: 0,right: 0,),
          child: Row(
            
            children: [
              SizedBox(
                height:40,
                width:40,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    primary: kPrimaryColor,
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: SvgPicture.asset(
                    "icons/BackICon.svg",
                    height: 15,
                  ),
                ),
              ),
                 Text(
                      product.name!,
                      
                       maxLines: 1,
                       overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5
                      ),
                    ), 
                    Spacer(),
              /*Row(
                mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "$rate",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 5),
                    SvgPicture.asset("icons/StarIcon.svg"),
                  ],
               
              )*/
            ],
          ),
        ),
     ),
    );
  }
}