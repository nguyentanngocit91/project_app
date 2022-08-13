import 'package:flutter/material.dart';


class Banner_Ads extends StatefulWidget {
  @override
  State<Banner_Ads> createState() => _Banner_AdsState();
}

class _Banner_AdsState extends State<Banner_Ads> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: ClipRect(
      child: Banner(
                message: "20% off !!",
                location: BannerLocation.bottomStart,
                color: Colors.red,
                child: Container(
                decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                Radius.circular(5)), ),
                width: double.infinity,
                  height: 206,
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Stack(
                   alignment: Alignment.center,
                          children: <Widget>[
                       /* Image.network(
                            'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190806131525/forkPython.jpg'),*/
                           Image.asset("images/banner.png", fit: BoxFit.cover,), 
                           Positioned(
                             width: 160,
                            left: 24,
                            top: 48,
                            child:   Text(
                          'Recomended Product',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,letterSpacing: 0.5,), //TextStyle
                        ),),
                      
                       
                        Positioned(
                          bottom: 48,
                          left: 24,
                          child: Text(
                          'We recommend the best for you',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,letterSpacing: 0.5), //TextStyle
                        ),),
                      ], 
                    
                    
                    ), 
                  ), 
                ), 
              ), 
      
      ),
    );
  }
}