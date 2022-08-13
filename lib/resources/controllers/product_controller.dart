import 'dart:convert';

import 'package:get/get.dart';
import 'package:project_app/resources/services/http_service.dart';
import 'package:project_app/resources/models/Product_model.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var product = [].obs;

  Product _productDetail = Product();
  Product get productDetail => _productDetail;
  //This obs extension makes any changes in these data observable

  @override
  void onInit() {
   fetchProductsModel();
   getProductDetail(1);

    super.onInit();
    //on_init function.
  }
  void fetchProductsModel() async {
    try {
      isLoading(true);
      var data = await HttpService.fetchProductsModel();
    print('Products : ${data}');
      if (data != "") {
        product.value = data;
      } else {
        throw Exception("Error Message");
      }
    } finally {
      isLoading(false);
    }
  }


  void getProductDetail(int? id) async {
    try {
      isLoading(true);
      var data = await HttpService.getProductDetail(id!);
   print('Products detail : ${data}');
   
      if (data != "") {
        _productDetail = data ;
        
      } else {
        throw Exception("Error Message");
      }
    } finally {
      isLoading(false);
    }
  }

}
