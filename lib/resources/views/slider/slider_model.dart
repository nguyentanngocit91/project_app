
import 'package:flutter/material.dart';
import '../../utils/constants.dart';

import 'package:project_app/resources/models/Slider_model.dart';


// ignore: must_be_immutable
class SliderUi extends StatelessWidget {
  SliderUi(this.slider);
  SliderModel slider;
  @override
  Widget build(BuildContext context) {
     return Container(
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                      borderRadius:BorderRadius.circular(5),
                      child: SizedBox.fromSize(
                      size: Size.fromRadius(5),
                      child: Image.network('${baseUrl}${slider.photo.toString()}',
                                  fit: BoxFit.fill,     
                      ),
                       ),
                       
                      ),
                      
                    );
  }
}