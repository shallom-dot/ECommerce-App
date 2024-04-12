import 'package:e_commerce_app/screens/order_success_screen.dart';
import 'package:e_commerce_app/screens/payment_method_screen.dart';
import 'package:e_commerce_app/screens/shipping-address.dart';
import 'package:e_commerce_app/widgets/container_modal_button.dart';
import 'package:flutter/material.dart';

class OrderConfirmScreen extends StatefulWidget {
  const OrderConfirmScreen({super.key});

  @override
  State<OrderConfirmScreen> createState() => _OrderConfirmScreenState();
}

class _OrderConfirmScreenState extends State<OrderConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirm Order',
         style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                const Text('Shipping Address',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w700
                ),),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2
                      )
                      
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Dear Roselyn Tobin',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),),
                           TextButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ShippingAddressScreen()));
                           },
                       child: const Text('Change',
                       style: TextStyle(
                        fontSize: 18, 
                          fontWeight: FontWeight.w700,
                        color: Color(0xFFDB3022),
                       ),)),
                     
                        ],
                      ),
                       const Text('14 Delvin Street',
                          style: TextStyle(
                            fontSize: 16
                          ),),
                          const Text('James Hills, CA, 97654, United States',
                          style: TextStyle(
                            fontSize: 16
                          ),),
                    ],
                  ),
                ),
               const SizedBox(height: 40,),
                 Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Payment Method',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w700
                          ),),
                           TextButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentMethodScreen()));
                           },
                       child: const Text('Change',
                       style: TextStyle(
                        fontSize: 18,
                          fontWeight: FontWeight.w700, 
                        color: Color(0xFFDB3022),
                       ),)),
                     
                        ],
                      ),

                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2
                      ),
                        ],),
                        child: Image.asset('assets/images/mastercard.png'),
                          ),
                          const SizedBox(width: 20,),
                          const Text('**** **** **** 3947')
                        ]
                      ),
                 const SizedBox(height: 40,),
                 const Text('Delivery Method',
                 style: TextStyle(
                   fontSize: 19,
                   fontWeight: FontWeight.w700
                 ),),

                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 100,
                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(10),
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 4,
                                                  spreadRadius: 2
                                                ),
                                                  ],),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/images/icon3.png',
                            height: 30,),
                            const Text('2-7 Days'),
                          ],
                                                  ),
                          ),
                           const SizedBox(width: 20,),
                      Container(
                        height: 60,
                        width: 130,
                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 4,
                                              spreadRadius: 2
                                            ),
                                              ],),
                                              child: const Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Home Delivery',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.indigo,
                        ),),
                        Text('2-7 Days'),
                      ],
                                              ),
                      ),
                        ],
                      ),
                    
                const SizedBox(
                    height: 50,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sub-Total',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey, 
                      ),),
                      Text('\$350.15',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                       
                      ),),
                      
                    ],
                  ),
                  const SizedBox(height: 15,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Shipping Fee',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),),
                      Text('\$15.00',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                       
                      ),),
                      
                    ],
                  ),
                   const Divider(height: 20,),
                   const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Payment',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),),
                      Text('\$365.15',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFFDB3022)
                       
                      ),),
                      
                    ],
                  ),
                  const SizedBox(height: 60,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderSuccessScreen()));
                    },
                    child: ContainerButtonModel(itext: 'Confirm Order',
                   containerWidth: MediaQuery.of(context).size.width,
                    bgColor: const Color(0xFFDB3022),),
                  
                  ),
              ],
            ),
          )
          ),
      ),
    );
  }
}