import 'package:flutter/material.dart';
import '../../models/Product_model.dart';
import 'components/body.dart';
import '../product/components/custom_app_bar.dart';


class DetailsScreen extends StatelessWidget {
  static String routeName = "/product";

  @override
  Widget build(BuildContext context) {
     final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
       // preferredSize: Size.fromHeight(500.0),
       preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        //child: CustomAppBar(rating: agrs.product.rating),
        child: CustomAppBar(product: agrs.product),
      ),
      body: Body(product: agrs.product),
    );
  }
}

class ProductDetailsArguments {
 Product product;
 
  
  ProductDetailsArguments({required this.product});
}