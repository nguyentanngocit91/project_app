import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_app/resources/utils/section_title.dart';
import 'package:project_app/resources/utils/constants.dart';
import 'package:intl/intl.dart';
import 'package:project_app/resources/widgets/star_rating.dart';
import 'package:project_app/resources/controllers/product_controller.dart';
import 'package:project_app/resources/models/Product_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../product/product_detail_page.dart';

class LoadMore_Products extends StatefulWidget {
  const LoadMore_Products({Key? key, this.bgColorfake = const Color(0xFFEFEFF2)}) : super(key: key);
final Color bgColorfake;
  @override
  _LoadMore_ProductsState createState() => _LoadMore_ProductsState();
}

class _LoadMore_ProductsState extends State<LoadMore_Products> {

  ProductController productController=Get.put(ProductController());
  
  final _baseUrl = 'http://demo04.ninavietnam.com.vn/api/products';

  // At the beginning, we fetch the first 20 posts
  int _page = 0;
  int _limit = 25;

  

void testa(){
  var pot=fetchProductsModel();
   print('post testL:${pot}');
}

 

  // There is next page or not
  bool _hasNextPage = true;

  // Used to display loading indicators when _firstLoad function is running
  bool _isFirstLoadRunning = false;

  // Used to display loading indicators when _loadMore function is running
  bool _isLoadMoreRunning = false;

  // This holds the posts fetched from the server
  List _posts = [];

  // This function will be called when the app launches (see the initState function)
  void _firstLoad() async {
    setState(() {
      _isFirstLoadRunning = true;
    });
    try {
      final res =
          await http.get(Uri.parse("$_baseUrl?limit=$_limit&page=$_page"));
      setState(() {
        _posts = json.decode(res.body)['data'];
       // print('api load more product: ${_posts}');


      });
    } catch (err) {
      print('Something went wrong');
    }

    setState(() {
      _isFirstLoadRunning = false;
    });
  } 



  // This function will be triggered whenver the user scroll
  // to near the bottom of the list view
  void _loadMore() async {

    if (_hasNextPage == true &&
        _isFirstLoadRunning == false &&
        _isLoadMoreRunning == false &&
        _controller.position.extentAfter < 300) {
      setState(() {
        _isLoadMoreRunning = true; // Display a progress indicator at the bottom
      });
      _page += 1; // Increase _page by 1
      try {
        final res =
            //await http.get(Uri.parse("$_baseUrl?page=$_page&limit=$_limit"));
            await http.get(Uri.parse("$_baseUrl?limit=$_limit&page=$_page"));

        final List fetchedPosts = json.decode(res.body)['data'];
        if (fetchedPosts.length > 0) {
          setState(() {
            _posts.addAll(fetchedPosts);
          });
        } else {
          // This means there is no more data
          // and therefore, we will not send another GET request
          setState(() {
            _hasNextPage = false;
          });
        }
      } catch (err) {
        print('Something went wrong!');
      }

      setState(() {
        _isLoadMoreRunning = false;
      });
    }
  }


    // The controller for the ListView
  late ScrollController _controller;

    @override
  void initState() {
    super.initState();
    _firstLoad();
    _controller = new ScrollController()..addListener(_loadMore);
  }

    @override
  void dispose() {
    _controller.removeListener(_loadMore);
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

   return Container(
    height:MediaQuery.of(context).size.height,
      child: _isFirstLoadRunning
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
             
                Expanded(
            
                  /*child: ListView.builder(
                   controller: _controller,
                    itemCount: productController.product.length,
                     itemBuilder: (_, index) => Card(
                      child: ProductLoad(productController.product[index]),
                     ),
                           
                   ),*/

                    child: GridView.builder(
                     controller: _controller,
                     physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      primary: false,
                      //padding: const EdgeInsets.all(20),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 6.0,
                      mainAxisSpacing: 6.0,
                      childAspectRatio: 0.6),
                      addAutomaticKeepAlives: false,
                      itemCount:productController.product.length,
                      itemBuilder: (context,index){
                      return ProductLoad(productController.product[index]);
                        },
                    ),
           
                ),

                // when the _loadMore function is running
                if (_isLoadMoreRunning == true)
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 40),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),

                // When nothing else to load
                if (_hasNextPage == false)
                  Container(
                    padding: const EdgeInsets.only(top: 30, bottom: 40),
                    color: Colors.amber,
                    child: Center(
                      child: Text('You have fetched all of the content'),
                    ),
                  ),
              ],
            ),
    );

  }

  static fetchProductsModel() {}
}


// ignore: must_be_immutable
class ProductLoad extends StatelessWidget {
  ProductLoad(this.product);

Product product;


  @override
  Widget build(BuildContext context) {
  
        var rate=product.rating;
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
           // arguments: ProductDetailsArguments(product:product),
          ),

      child:Container(
       width: 165,
       height: 285,
       decoration: BoxDecoration(
       border: Border.all(color: Color.fromARGB(221, 219, 217, 217)),
       borderRadius: const BorderRadius.all(
      Radius.circular(5)),  ),
      margin:EdgeInsets.all(5),
      child: Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisSize: MainAxisSize.min,
          children: [
            Container(
               width: double.infinity,
               height: 133,
              padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(221, 219, 217, 217)),
                borderRadius: const BorderRadius.all(
                Radius.circular(5)),  ),
              
              child: CachedNetworkImage(
                imageUrl:'${baseUrl}${product.photo}',
                fit: BoxFit.cover,
                
              ),
            ),
            
            Padding(padding: EdgeInsets.all(4.0),),
         
          Flexible( 
          child:Container(
            child:Text(
                   product.name!,
                  overflow: TextOverflow.ellipsis,
                   maxLines: 2,
                   style: const TextStyle(color: Color(0XFF223263),fontWeight:FontWeight.w700,letterSpacing: 0.5,fontSize: 12,),
             ),
            ),
          ),

    
            Padding(padding: EdgeInsets.all(2.0),),

           

            StarRating(rating:rate!, size: 12),

            Padding(padding: EdgeInsets.all(8.0),),
            Row(
              children: <Widget>[
               Text(
                  NumberFormat.simpleCurrency(locale: 'vi').format(product.sellingPrice),
                  style: TextStyle(color: Color(0XFF40BFFF),fontSize: 12,fontWeight: FontWeight.w700, letterSpacing: 0.5),
                ),
              ],

            ),
   
            Padding(padding: EdgeInsets.all(2.0),),

         
          Row(
          children: <Widget>[
            Text( NumberFormat.simpleCurrency(locale: 'vi').format(product.regularPrice),
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF9098B1),
                    decoration: TextDecoration.lineThrough)),
            Padding(padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),),
            Text(
              '24% Off',
              style: TextStyle(
                  color: Color(0XFFFB7181),
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  ),
            )
          ],
        ),  

          
             
          ],
        ),
      ),
    ),

    );
  }
}
