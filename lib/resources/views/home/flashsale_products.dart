import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/resources/utils/section_title.dart';
import 'package:project_app/resources/utils/constants.dart';
import 'package:project_app/resources/controllers/product_controller.dart';
import 'package:project_app/resources/views/home/mega_sale.dart';



class FlashSale_Products extends StatefulWidget {
  @override
  State<FlashSale_Products> createState() => _FlashSale_ProductsState();
}

class _FlashSale_ProductsState extends State<FlashSale_Products> {
  //creating a controller object and using get.put() to insert dependencies.
  ProductController productController = Get.put(ProductController());


  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
       height:350,
      child: Column(
        mainAxisSize: MainAxisSize.min,
          children: [

             Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: SectionTitle(
                    title: "Flash Sale",
                    pressSeeAll: () {},
                  ),
                ),
            
            Expanded(
              
              flex: 6,
              //grid built inside obx function.
              child: Obx(
                () {
                  if (productController.isLoading.value) {
                    //if isloading is true we get circular spinner.
                    return Center(child: CircularProgressIndicator());
                  } else
                    //staggered
                    // grid view builds given number, in given layout, with given widget.
                   //  print(sliderController.sliderList.length);
                    return ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                      itemCount: productController.product.length,
                      itemBuilder: (BuildContext context, int index) => Card(
                      child: MegaSale(productController.product[index]),
                    ),   
                   );
                   
                },
              ),
            ),
          ],
       
      ),
    );
  }
}