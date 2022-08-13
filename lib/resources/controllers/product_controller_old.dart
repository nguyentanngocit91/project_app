import 'package:get/get.dart';
import 'package:project_app/resources/services/http_service.dart';


class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = [].obs;
  //This obs extension makes any changes in these data observable

  @override
  void onInit() {
    
    fetchProducts();
    super.onInit();
    //on_init function.
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var data = await HttpService.fetchproducts();
    //print('Products controller: ${data}');
      if (data != "") {
        productList.value = data;
      } else {
        throw Exception("Error Message");
      }
    } finally {
      isLoading(false);
    }
  }
//This function basically uses the remote client to contact the api and get information, to be stored in the products
//list. Then parts of said data are read and displayed on the front-end.
}