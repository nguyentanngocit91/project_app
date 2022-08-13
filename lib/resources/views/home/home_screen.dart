import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_app/resources/utils/constants.dart';
import 'package:project_app/resources/views/slider/carousel_slider.dart';
import 'package:project_app/resources/views/home/categories.dart';
import 'package:project_app/resources/views/home/flashsale_products.dart';
import 'package:project_app/resources/views/home/megasale_products.dart';
import 'package:project_app/resources/views/home/banner_index.dart';
import 'package:project_app/resources/widgets/bottomNavigationBar.dart';
import 'package:project_app/resources/views/home/load_more_products.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}):super(key: key);
  @override
  Widget build (BuildContext context){

    return SafeArea(
      
      child: Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: ()=>{}, 
        icon: SvgPicture.asset("icons/menu.svg")),

      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("icons/logo.png"),
          
        ],
      ),
      actions: [
     
          IconButton(onPressed: ()=>{}, 
         color: ColorGrey,
         icon:Icon(Icons.search)),

         IconButton(onPressed: ()=>{}, 
         color: ColorGrey,
         icon:Icon(FontAwesomeIcons.heart)),

        IconButton(onPressed: ()=>{}, 
         color: ColorGrey,
         icon:Icon(FontAwesomeIcons.bell)),

      ],

      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(defaultPadding/4),
            /* child: GetBuilder<SliderController>(
            builder: (_c){
             
                if(_c.sliderList.length>0)
                  return CarouselDemo(_c.sliderList);
                else
                  return CarouselDemo(_c.sliderList);
            
            },
          ),*/

          
             
           child: CarouselDemo(),
            ),
         Categories(),

     FlashSale_Products(),

       MegaSale_Products(),

       Banner_Ads(),

        Padding(padding: EdgeInsets.all(defaultPadding/4)),

    //MegaSale_Products(),

    LoadMore_Products(),


          ],

        ),
      ),

      bottomNavigationBar: BTNavigationBar(),




    )
    
    );

  }
}