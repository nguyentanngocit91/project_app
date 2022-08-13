import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/resources/utils/section_title.dart';
import 'package:project_app/resources/utils/constants.dart';
import 'package:project_app/resources/controllers/product_controller_old.dart';
import 'package:intl/intl.dart';
import 'package:project_app/resources/widgets/star_rating.dart';
import 'package:project_app/resources/views/home/mega_sale.dart';

class MegaSale_Products extends StatefulWidget {
  @override
  State<MegaSale_Products> createState() => _MegaSale_ProductsState();
}

class _MegaSale_ProductsState extends State<MegaSale_Products> {
  //creating a controller object and using get.put() to insert dependencies.
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     height:MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "   ShopPink",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      Icons.price_change,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    Text(
                      /*wal.balance.toStringAsFixed(2),*/
                      "MAAA",
                      style: TextStyle(color: Colors.white),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        /*Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CartPage()));*/
                      },
                      child: Icon(
                        Icons.shopping_bag,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
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

                    return ListView.builder(
                   controller: ScrollController(),
                    itemCount: productController.productList.length,
                     itemBuilder: (_, index) => Card(
                      
                      child: Row(

                       children: List.generate(
                     productController.productList.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                         // child: MegaSale(productController.productList[index]),
                                  
                            
                          ),
)
                         ),
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