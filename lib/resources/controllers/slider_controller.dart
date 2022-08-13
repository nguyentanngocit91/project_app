import 'dart:convert';

import 'package:get/get.dart';
import 'package:project_app/resources/services/http_service.dart';


class SliderController extends GetxController {
  var isLoading = true.obs;
  var sliderList = [].obs;
  //This obs extension makes any changes in these data observable

  @override
  void onInit() {
    
    fetchSliders();
    super.onInit();
    //on_init function.
  }

  void fetchSliders() async {
    try {
      isLoading(true);
     var data = await HttpService.fetchSliders();
    // print('slide controller: ${data}');
      if (data != "") {
        sliderList.value = data;

         
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