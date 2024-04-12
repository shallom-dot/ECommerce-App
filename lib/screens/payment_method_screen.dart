import 'package:e_commerce_app/screens/shipping-address.dart';
import 'package:e_commerce_app/widgets/container_modal_button.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {

  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
    _type = e as int;
  });
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Method'),
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child:  Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 40,),
                  Container(
                    width: size.width,
                    height: 55,
                    decoration: BoxDecoration(
                      border: _type == 1
                       ? Border.all(width: 1, color: const Color(0xFFDB3022))
                       : Border.all(width: 0.3, color: Colors.grey),
                       borderRadius: BorderRadius.circular(5),
                       color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center ,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 1, 
                                groupValue: _type, 
                                onChanged: _handleRadio,
                                activeColor: const Color(0xFFDB3022),),
                                Text("Amazon Pay",
                                style: _type == 1 ? const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500,
                                   color: Colors.black) :const TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w500,
                                   color: Colors.grey)
                                ),
                               
                              ],
                            ),
                             Image.asset(
                                 'assets/images/Amz_pay.png',
                                // width: 70,
                                //  height: 90,
                                 fit: BoxFit.cover,
                                ),
                          ],
                        ),
                      )
                      ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    width: size.width,
                    height: 55,
                    decoration: BoxDecoration(
                      border: _type == 2
                       ? Border.all(width: 1, color: const Color(0xFFDB3022))
                       : Border.all(width: 0.3, color: Colors.grey),
                       borderRadius: BorderRadius.circular(5),
                       color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center ,
                         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 2, 
                                groupValue: _type, 
                                onChanged: _handleRadio,
                                activeColor: const Color(0xFFDB3022),),
                                Text("Credit Card",
                                style: _type == 1 ? const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500,
                                   color: Colors.black) :const TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w500,
                                   color: Colors.grey)
                                   ),
                               
                              ],
                            ),
                            const Spacer(),
                             Image.asset(
                                 'assets/images/Vs_pay.png',
                                 width: 40,
                                 //height: 70,
                                 fit: BoxFit.contain,
                                ),
                                 Image.asset(
                                 'assets/images/mastercard.png',
                                 width: 40,
                                 //height: 70,
                                 fit: BoxFit.contain,
                                ),
                          ],
                        ),
                      )
                      ),
                  ),
                  const SizedBox(height: 10,),
                   Container(
                    width: size.width,
                    height: 55,
                    decoration: BoxDecoration(
                      border: _type == 3
                       ? Border.all(width: 1, color: const Color(0xFFDB3022))
                       : Border.all(width: 0.3, color: Colors.grey),
                       borderRadius: BorderRadius.circular(5),
                       color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center ,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 3, 
                                groupValue: _type, 
                                onChanged: _handleRadio,
                                activeColor: const Color(0xFFDB3022),),
                                Text("PayPal",
                                style: _type == 1 ? const TextStyle(
                                   fontSize: 15, fontWeight: FontWeight.w500,
                                   color: Colors.black) :const TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w500,
                                   color: Colors.grey)
                                ),
                               
                              ],
                            ),
                             Image.asset(
                                 'assets/images/paypal.png',
                                 width: 70,
                                //  height: 90,
                                // fit: BoxFit.cover,
                                ),
                          ],
                        ),
                      )
                      ),
                  ),
                   const SizedBox(height: 10,),
                   Container(
                    width: size.width,
                    height: 55,
                    decoration: BoxDecoration(
                      border: _type == 4
                       ? Border.all(width: 1, color: const Color(0xFFDB3022))
                       : Border.all(width: 0.3, color: Colors.grey),
                       borderRadius: BorderRadius.circular(5),
                       color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center ,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 4, 
                                groupValue: _type, 
                                onChanged: _handleRadio,
                                activeColor: const Color(0xFFDB3022),),
                                Text("Google Pay",
                                style: _type == 1 ? const TextStyle(
                                   fontSize: 15, fontWeight: FontWeight.w500,
                                   color: Colors.black) :const TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w500,
                                   color: Colors.grey)
                                ),
                               
                              ],
                            ),
                             Image.asset(
                                 'assets/images/icon2.png',
                                 width: 40,
                                //  height: 90,
                                 // fit: BoxFit.cover,
                                ),
                          ],
                        ),
                      )
                      ),
                  ),
                  const SizedBox(
                    height: 100,
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
                   const Divider(height: 20, color: Colors.black,),
                   const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Payment',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),),
                      Text('\$365.15',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFFDB3022)
                       
                      ),),
                      
                    ],
                  ),
                  const SizedBox(height: 50,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ShippingAddressScreen()));
                    },
                    child: ContainerButtonModel(itext: 'Proceed',
                    containerWidth: size.width,
                    bgColor: Color(0xFFDB3022),),
                  
                  )
        
                ],
              )
              ),
          ) 
          ),
      ),
    );
  }
}