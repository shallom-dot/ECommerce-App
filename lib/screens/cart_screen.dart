import 'package:e_commerce_app/screens/payment_method_screen.dart';
import 'package:e_commerce_app/widgets/container_modal_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartScreen extends StatelessWidget {

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

   CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body:  SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              ListView.builder(
                itemCount: imageList.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          splashRadius: 20,
                          activeColor: const Color(0xFFDB3022),
                          value: true,
                          onChanged: (val) {},
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            imageList[index],
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productTitles[index],
                              style: const TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w900,
                                fontSize: 18
                              ),
                            ),
                            const SizedBox(height: 10,),
                            const Text('Hooded Jacket',
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 16,
                            ),),
                            const SizedBox(height: 10,),
                            Text(
                              prices[index],
                              style: const TextStyle(
                                color: Color(0xFFDB3022),
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                          Icon(CupertinoIcons.minus,
                            color: Colors.green,
                            ),
                          
                          SizedBox(width: 20,),
                          Text(
                            '1',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(CupertinoIcons.plus,
                          color: Color(0xFFDB3022),),
                          
                          ],
                        )
                      ],
                    ),
                  );
                }
              ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Select All',
                    style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),),
                    Checkbox(
                      splashRadius: 20,
                      activeColor: const Color(0xFFDB3022), 
                      value: false,
                    onChanged: (val) {})
                  ],
                ),
                const Divider(
                  height: 20,
                  thickness: 1,
                  color: Colors.black,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Payment',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),),
                    Text('\$300.50',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFDB3022),
                    ),)
                  ],
                ),
                const SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                     Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const PaymentMethodScreen()));
                  },
                  child: ContainerButtonModel(
                    itext: 'Checkout',
                    containerWidth: MediaQuery.of(context).size.width,
                    bgColor: const Color(0xFFDB3022),
                  ),
                ),
                const SizedBox(height: 40,),
            ],
          ),
        ) ,
      ),
    );
  }
} 