import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/resources/models/Category.dart';
import 'package:project_app/resources/utils/constants.dart';

import 'package:project_app/resources/controllers/product_catalog_controller.dart';

import 'package:project_app/resources/models/Productcatalog_model.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

// ignore: must_be_immutable
class _CategoriesState extends State<Categories> {

  ProductCatalogController productCatalogController=Get.put(ProductCatalogController());

  //final productCatalogController=Get.find<ProductCatalogController>().;
  
  void initState(){
  super.initState();
    loadcatalogpro();
    print('aa:${loadcatalogpro()}');
  }
  
  loadcatalogpro(){
    Get.find<ProductCatalogController>().productCatalog();
  }
  @override
  Widget build(BuildContext context) {
    return Container(

      

      child: Column(
      
        children: [
        Stack(
              
            children: [
              
              Align(
                alignment: Alignment.topLeft,
                child: Text("Category",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF223263),fontSize: 14,letterSpacing: 0.5,fontFamily: "Poppins")),
                 
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text("More Category",style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFF40BFFF),fontSize: 14,letterSpacing: 0.5 ),),
              ),
            ],
          ),

          Padding(padding: EdgeInsets.all(10),),

            SizedBox(
              
           height:100,
              /*child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: productCatalogController.productCatalog.length,
                itemBuilder: (context, index) => CategoryCard(productCatalogController.productCatalog[index]),
                separatorBuilder: (context, index) =>
                const SizedBox(width: defaultPadding),
              ),*/
              child: Obx((){
                if(productCatalogController.isLoading.value){
                  //return Text("data");
                  return Center(child: CircularProgressIndicator());
                }
                else{
                  //return Text("data");
                  return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: productCatalogController.productCatalog.length,
                      itemBuilder: (context, index) => CategoryCard(productCatalogController.productCatalog[index]),
                      separatorBuilder: (context, index) =>
                      const SizedBox(width: defaultPadding),
                    );
                }

              }
              
              ),

           /* child: GetBuilder<ProductCatalogController>(builder: (productCatalogController){
                if(productCatalogController.isLoading.value){
                  //return Text("data");
                  return Center(child: CircularProgressIndicator());
                }
                else{
                  //return Text("data");
                  return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: productCatalogController.productCatalog.length,
                      itemBuilder: (context, index) => CategoryCard(productCatalogController.productCatalog[index]),
                      separatorBuilder: (context, index) =>
                      const SizedBox(width: defaultPadding),
                    );
                }
            }),*/

            ),

             Padding(padding: EdgeInsets.all(10),),

        ],
      
    
      ),

    );
  }
}

// ignore: must_be_immutable
class CategoryCard extends StatelessWidget {
  /*const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;*/

  CategoryCard(this.catalogModel);

  ProductCatalogModel catalogModel; 

  @override
  Widget build(BuildContext context) {
  
    return GestureDetector(
      
      onTap: ()=>{},
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding / 2, horizontal: defaultPadding / 4),
        child: Column(
  
          children: [
            //const ClipRRect(),
            //SvgPicture.asset(icon),
           // Image.asset(icon),
            Image.network('$baseUrl${catalogModel.photo!}'),
            const SizedBox(height: defaultPadding / 2),
            Padding(padding: EdgeInsets.all(8)),
            Text(
              catalogModel.name!,
              style: TextStyle(fontSize:12,fontWeight: FontWeight.w400,color: Color(0XFF9098B1),letterSpacing: 0.5),
              
            ),
            
           
          ],
        ),
      ),
    );
  }
}
