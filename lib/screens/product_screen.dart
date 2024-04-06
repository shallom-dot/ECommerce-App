import 'package:e_commerce_app/widgets/product_details_popup.dart';
import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class ProductScreen extends StatelessWidget {
   ProductScreen({super.key});
  
List<String>images = [
      'assets/images/image1.jpg',
      'assets/images/image2.jpg',
      'assets/images/image3.jpg',
      'assets/images/image4.jpg',
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 420,
                  width: MediaQuery.of(context).size.width,
                  child: FanCarouselImageSlider(
                    sliderHeight: 400,
                    autoPlay: true,
                    imagesLink: images, 
                    isAssets: true),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                      'Warm Zipper',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w900,
                        fontSize: 25
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Hooded Jacket',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    
              ]),
              Text(
                '\$300.00',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0xFFDB3022)
                ),
              )
                ],),
                const SizedBox(
                  height: 10,),
                 Align(
                  alignment: Alignment.centerLeft,
                   child: RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 25,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                   
                      },
                   ),
                 ),
            const SizedBox(height: 10,),
                  const Align(
                  alignment: Alignment.centerLeft,
                    child: Text(
                        'Cool Windy weather is on its way. Send him out\nthe door in a jacket he wants to wear. Warm\nZooper Hooded Jacket.',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color(0x1F989797),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Icon(Icons.shopping_cart,
                            color: Color(0xFFDB3022),),
                          ),
                           ProductDetailPopUp(),
                        ],
                      ),  
                ],
            ),
          ),
        ),
      ),
    );
  }
}