import 'dart:core';

import 'package:e_commerce_app/screens/product_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    List tabs = [
      'All' , 'Category' , 'Top' , 'Recommended'];

    List imageList = [
      'assets/images/image1.jpg',
      'assets/images/image2.jpg',
      'assets/images/image3.jpg',
      'assets/images/image4.jpg',
    ];
    
    List productTitles = [
      'Warm Zipper',
      'Knitted Wool',
      'Zipper Win',
      'Child Win',
    ];

    List prices = [
      '\$300',
      '\$650',
      '\$50',
      '\$100', 
    ];

    List review = [
      '54',
      '120',
      '542',
      '34',
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width /1.5,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(10),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black12.withOpacity(0.05),
                      //     blurRadius: 2,
                      //     spreadRadius: 1,
                      //   )
                      // ]
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search,
                        color: Color(0xFFDB3022),),
                        border: InputBorder.none,
                        label: Text(
                          'Find your product',
                          style: TextStyle(

                          ),
                        )
                      ),
                    ),
                  ),

              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 6,
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(10),
                  //  boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.black12.withOpacity(0.05),
                  //         blurRadius: 2,
                  //         spreadRadius: 1,
                  //       )
                  //     ]
                ),
                child: const Icon(
                  Icons.notifications,
                  color: Color(0xFFDB3022),
                ),
              )

                ],
              ),
              const SizedBox(height: 20,),

              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF0DD),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Image.asset('assets/images/freed.png'),
              ),
          const SizedBox(height: 20,),
          SizedBox(height: 50,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: tabs.length, 
            itemBuilder: (BuildContext context, int index) { 
                return FittedBox(
                  child: Container(
                    height: 30,
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: FittedBox(
                      child: Text(tabs[index],
                      style: const TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                 ) );
             },
          )),

  const SizedBox(height: 20,),
  Container(
    height: 200,
    child: ListView.builder(
      itemCount: imageList.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          width: 320,
          margin: const EdgeInsets.only(right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 190,
                height: 190,
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {
 Navigator.push(context, MaterialPageRoute(builder: (context) =>  ProductScreen()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(imageList[index],
                        fit: BoxFit.cover,
                        height: 190,
                        width: 190,
                        ),
                      ),
                    ),

                    Positioned(
                      right: 10,
                      top: 10,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(child: Icon(Icons.favorite,
                        color: Color(0xFFDB3022),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
             Padding(
               padding: const EdgeInsets.only(left: 8),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                  productTitles[index],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 120,
                    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    ),
                  ),
                 const SizedBox(height: 10,),
                      Row(
                        children :  [
                          const Icon(Icons.star,
                          color: Colors.amber,
                          size: 22,),
                           Text(
                       // ignore: prefer_interpolation_to_compose_strings
                       '${'(' + review[index]})',
                      ),
                      const SizedBox(width: 10,),
                      Text(
                        prices[index],
                        style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold, 
                        color: Color(0xFFDB3022), 
                      ),
                      ),
                    ],
                  )
                           ],
               ),
             )
            ]
          ),
           );
      }
      
       ),
  ),
const SizedBox(height: 10 ,),

const Align(
  alignment: Alignment.centerLeft,
child: Text('Newest Products',
style: TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
),
),),
const SizedBox(height: 30,),
Center(
  child: GridView.builder(
    itemCount: productTitles.length,
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      // crossAxisSpacing: 40
      ), 
      itemBuilder: (context, index) {
        return Container(
          width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 220,
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(imageList[index],
                          width: 170,
                          fit: BoxFit.cover,
                          height: 220,
                          ),
                        ),
                      ),
  
                      Positioned(
                        right: 10,
                        top: 10,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(child: Icon(Icons.favorite,
                          color: Color(0xFFDB3022),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  productTitles[index],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Row(
                        children :  [
                          const Icon(Icons.star,
                          color: Colors.amber,
                          size: 22,),
                           Text(  // ignore: prefer_interpolation_to_compose_strings
                       '${'(' + review[index]})',
                      ),
                      const SizedBox(width: 10,),
                      Text(
                        prices[index],
                        style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold, 
                        color: Color(0xFFDB3022), 
                      ),
                      ),
                    ],
                  )
              ],
            ),
               ]), );
      
              
     } ),
),]
        )
      ), 
     ),
     ) );
  }
}