import 'dart:async';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:project_app/resources/models/Slider_model.dart';
import 'package:project_app/resources/utils/constants.dart';
import 'package:project_app/resources/models/slider_model.dart';
import 'package:project_app/resources/controllers/slider_controller.dart';
import 'package:project_app/resources/views/slider/slider_model.dart';

import 'package:project_app/resources/controllers/product_catalog_controller.dart';


class CarouselDemo extends StatefulWidget {
  final String title = "Carousel Demo";

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<CarouselDemo> {
  //final CarouselSlider carouselSlider;
  int _current = 0;
  /*List imgList = [
  'http://demo04.ninavietnam.com.vn/storage/photos/2022-04/anh-hoa-bi-ngan-buon_large.jpg',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
   'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];*/


SliderController sliderController=Get.put(SliderController());
ProductCatalogController productCatalogController=Get.put(ProductCatalogController());

  List<T> map<T>(List sliderController, Function handler) {
    List<T> result = [];
    for (var i = 0; i < sliderController.length; i++) {
      result.add(handler(i, sliderController[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) => Column(
     children: <Widget>[
      Obx(() {

           if (sliderController.isLoading.value){
           // print("object-aaa");
           // print(productCatalogController.isLoading.value);
            //print('aaaa: ${sliderController.sliderList.length}');

             return Center(child: CircularProgressIndicator());
           }
           else{
          // print('aaaa: ${sliderController.sliderList.length}');
          
           return  CarouselSlider(
              options: CarouselOptions(
              height: 200.0,
              viewportFraction: 1,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: false,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
             // pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
                 onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });  
              },  ),

            items: generateSliders1(),

            /* items: imgList.map((imgList) {
                return Builder(
                  builder: (BuildContext context) {
                    
                    return Container(
                      
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius:BorderRadius.circular(5),
                       child: SizedBox.fromSize(
                         size: Size.fromRadius(5),
                        child: Image.network(
                                  imgList,
                                  fit: BoxFit.fill,
                         ),

                        
                       ),
                       
                      ),
                      
                    );
                  },
                );
              }).toList(),*/
            );




           }


         }
         
         
         ),
            
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>( sliderController.sliderList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? ColorBlue : ColorDotSlide,
                  ),
                );
              }),
            ),
            SizedBox(
              height: 20.0,
            ),
            
            /*Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  
                  child: Text("<"),
                ),
                GestureDetector(
                  
                  child: Text(">"),
                ),
              ],
            ),*/


          ],
       );

  /*goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }*/

List<Widget> generateSliders1()  {
 // ignore: unused_local_variable
 var imageslider= sliderController.sliderList.map((item){
   return Builder(builder:  (BuildContext context ) {
      return  SliderUi(item);
      },
   );

 }).toList(); 

 return imageslider;
}
}

