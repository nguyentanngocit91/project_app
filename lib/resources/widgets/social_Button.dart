import 'package:flutter/material.dart';
class CustomWidgets {
  static Widget socialButtonRect(title, color, icon, {Function? onTap}) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: 50,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(
                  color:Color(0xFFEBF0FF),width: 2, style: BorderStyle.solid),
            color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),



        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Icon( icon,
              color: Color(0xFF4092FF),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text(title,
                  style: TextStyle(
                  color: Color(0xFF9098B1),
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
              ],
             
           
            ),
          ],
        ),

/*child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
            ),
          ],
        ),*/




      ),
    );
  }
  static Widget socialButtonCircle(color, icon, {iconColor, Function? onTap}) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Icon(
            icon,
            color: iconColor,
          )), //
    );
  }
}