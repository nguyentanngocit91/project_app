import 'package:flutter/material.dart';
import 'package:project_app/resources/utils/constants.dart';
import 'package:project_app/resources/widgets/button_widget.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:project_app/resources/widgets/social_Button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
class RegisterScreen extends StatefulWidget {

  
  final Key? fieldKey;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final validator;
  final ValueChanged<String>? onFieldSubmitted;

    RegisterScreen({
    Key? key,
   
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
  }): super(key: key);


  @override
  _RegisterScreentate createState() => _RegisterScreentate();




}

class _RegisterScreentate extends State<RegisterScreen> {
final _formKey = GlobalKey<FormState>();
bool _isObscure = true;
  void _send() {
    _formKey.currentState?.validate();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
       height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            
          ),
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[

              Container(
                 alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 100.0, bottom: 15.0),
                    child: Column(
                      children: [
                      Padding( padding: EdgeInsets.symmetric(horizontal: 15),),
                      Image.asset("icons/Icon-logo.png"),
                       Padding(  padding: const EdgeInsets.only( bottom: 15),),  

                        Text(
                          "Let’s Get Started",
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: nameLogoColor),
                        ),
                         Padding(  padding: const EdgeInsets.only(bottom: 10),),  
                        Text(
                          "Create an new account",
                          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: nameSmallLogoColor),
                        ),
                      ],
                    ), 

              ),

             Padding( padding: const EdgeInsets.only( bottom: 15.0),),

         Expanded(
          child: Form(
          
          key: _formKey,
          child: Column(
              children: [

                Container(
                    height: 48,
                    child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(color: ColorBlue)),
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    //  borderSide: BorderSide(color: Colors.white)
                      ),
                      errorBorder:
                      OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      hintText: 'Enter valid Full Name',
                      labelText: 'Full Name',
                      prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child:Icon(Icons.account_circle_rounded,
                      size: 28,
                      ), 
                    )

                    ),
                  ),

                ),

           Padding(  padding: const EdgeInsets.only(top: 10, bottom: 10),),  



                Container(
                    //height: 48,
                    child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(color: ColorBlue)),
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    //  borderSide: BorderSide(color: Colors.white)
                      ),
                      errorBorder:
                      OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      hintText: 'Enter valid email id as tanit91.nina@gmail.com',
                      labelText: 'Your Email',
                      prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child:Icon(Icons.email,
                      size: 28,
                      ), 
                    )

                    ),

                    validator: MultiValidator([
                        RequiredValidator(errorText: "* Required"),
                        EmailValidator(errorText: "Enter valid email id"),
                      ])
                  
                  ),

                ),

           Padding(  padding: const EdgeInsets.only(top: 10, bottom: 10),),  

            Container(
               //height: 48,
                child: TextFormField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                labelText: 'Password',
                hintText: 'Enter secure password',
                contentPadding: EdgeInsets.all(20.0),
               suffixIcon: new GestureDetector(
                onTap: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
                child:
                new Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
              ),
                prefixIcon:Icon(Icons.password_rounded),
                 /* prefix: Container(
                    width: 36,
                    height: 36,
                    margin: const EdgeInsets.only(right: 8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1.0, color: Color(0xAAAA000000)),
                      ),
                    ),
                    child: Icon(Icons.password),
                  ),*/
                ),

                validator: MultiValidator([
                    RequiredValidator(errorText: "* Required"),
                    MinLengthValidator(6,
                        errorText: "Password should be atleast 6 characters"),
                    MaxLengthValidator(15,
                        errorText:
                        "Password should not be greater than 15 characters")
                  ])
              
              ), 

             ),



              Padding(  padding: const EdgeInsets.only(top: 10, bottom: 10),),  

            Container(
               //height: 48,
                child: TextFormField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                labelText: 'Password Again',
                hintText: 'Enter secure password Again',
                contentPadding: EdgeInsets.all(20.0),
               suffixIcon: new GestureDetector(
                onTap: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
                child:
                new Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
              ),
                prefixIcon:Icon(Icons.password_rounded),
                 /* prefix: Container(
                    width: 36,
                    height: 36,
                    margin: const EdgeInsets.only(right: 8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1.0, color: Color(0xAAAA000000)),
                      ),
                    ),
                    child: Icon(Icons.password),
                  ),*/
                ),

                validator: MultiValidator([
                    RequiredValidator(errorText: "* Required"),
                    MinLengthValidator(6,
                        errorText: "Password should be atleast 6 characters"),
                    MaxLengthValidator(15,
                    
                        errorText:
                        "Password should not be greater than 15 characters")
                  ])
              
              ), 

             ),


                Container(
                margin: const EdgeInsets.only(top: 20.0),
                child:  Row(
                  children: <Widget>[
                     Expanded(
                       child: ButtonWidget(
                            label: "Sign Up",
                            paddingTop: 16,
                            paddingBottom: 16,
                            textColor: Colors.white,
                            backgroundColor: ColorBlue,
                            fontSize: 14,
                            borderColor: ColorBlue,
                            listBoxShadow: [BoxShadow(color: Colors.blue.withOpacity(0.3),
                            spreadRadius:5,
                            blurRadius: 5,
                            offset: Offset(0, 1),
                          )],
                          borderRadius: 5.0,
                          onPress: _send,
                       ),
                    ),
                  ],
                ),
              ),

        
          Padding(  padding: const EdgeInsets.only(top: 10, bottom: 10),),  

 

  
            Container(
                margin: EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      ' have a account?',
                    ),
                    GestureDetector(
                      onTap: () {  },
                      child: Text(
                        ' Sign In',
                        style: TextStyle(
                            color: ColorBlue,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )),



              

          ],
       ),
      
        ),

      ),
      
      ],

          ),
        ),
      ),
    );
  }
}
