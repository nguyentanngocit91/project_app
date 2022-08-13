import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_app/resources/models/Product_model.dart';
import 'package:project_app/resources/models/products_model_old.dart';
import 'package:project_app/resources/models/Slider_model.dart';
import 'package:project_app/resources/models/Productcatalog_model.dart';

class HttpService {
  //HTTP Client Class


 // Product Detail

   
    static Future<Product> getProductDetail(int id) async {
    //static method to make client constant.

    var response =
        await http.get(Uri.parse("http://demo04.ninavietnam.com.vn/api/products/"+ id.toString()));
    //response from the internet using http get mechanism

    if (response.statusCode == 200) {
      var data_product = jsonDecode(response.body);
      // ignore: unused_local_variable
      //var _productDetail = Product.fromJson(jsonDecode(response.body));
        print('api get product detail: ${data_product}');
      //return  productFromJson(jsonEncode(_productDetail));
    return Product.fromJson((data_product));
    }
    //success case

    else {
      throw Exception("Error");
    }
    //failure case
  }



    // Product Model

   
    static Future<List<Product>> fetchProductsModel() async {
    //static method to make client constant.

    var response =
        await http.get(Uri.parse("http://demo04.ninavietnam.com.vn/api/products"));
    //response from the internet using http get mechanism

    if (response.statusCode == 200) {
      var data_product = jsonDecode(response.body)['data'];
     // print('api get product lient: ${data_product}');
      return  productFromJson(jsonEncode(data_product));
    }
    //success case

    else {
      throw Exception("Error");
    }
    //failure case
  }

  // Product Catalog Model

    static Future<List<ProductCatalogModel>> fetchProductCatalogs() async {
    //static method to make client constant.

    var response =
        await http.get(Uri.parse("http://demo04.ninavietnam.com.vn/api/categories"));
    //response from the internet using http get mechanism

    if (response.statusCode == 200) {
      var data_catalog = response.body;
      //print('api get product catalog lient: ${data_catalog}');
      return ProductCatalogModelFromJson(data_catalog);
    }
    //success case

    else {
      throw Exception("Error");
    }
    //failure case
  }


  // SliderModel

    static Future<List<SliderModel>> fetchSliders() async {
    //static method to make client constant.

    var response =
        await http.get(Uri.parse("http://demo04.ninavietnam.com.vn/api/photos"));
    //response from the internet using http get mechanism

    if (response.statusCode == 200) {
      var data_slide = response.body;
    //  print('api get slider lient: ${data_slide}');
      return SliderModelFromJson(data_slide);
    }
    //success case

    else {
      throw Exception("Error");
    }
    //failure case
  }


    static Future<List<ProductModel>> fetchproducts() async {
    //static method to make client constant.

    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    //response from the internet using http get mechanism

    if (response.statusCode == 200) {
      var data = response.body;
      return productModelFromJson(data);
    }
    //success case

    else {
      throw Exception("Error");
    }
    //failure case
  }


}