import 'package:e_commerce_app/screens/navigation_screen.dart';
import 'package:e_commerce_app/widgets/container_modal_button.dart';
import 'package:flutter/material.dart';

class OrderSuccessScreen extends StatefulWidget {
  const OrderSuccessScreen({super.key});

  @override
  State<OrderSuccessScreen> createState() => _OrderSuccessScreenState();
}

class _OrderSuccessScreenState extends State<OrderSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 200,
                child: Image.asset('assets/images/successful.png'),
                ),
                const Text('Success !',
                 style: TextStyle(
                  fontSize: 25,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w700
                ),),
          const Text('Your Order will be delivered soon.',
           style: TextStyle(
                   fontSize: 16,
                  fontWeight: FontWeight.w500
                ),),
          const Text('Thank you! for choosing our app.',
           style: TextStyle(
                  // fontSize: 19,
                  fontWeight: FontWeight.w500
                ),)
            ],
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: InkWell(
             onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const NavigationScreen()));
             },
              child: ContainerButtonModel(itext: 'Continue Shopping',
              containerWidth: MediaQuery.of(context).size.width,
              bgColor: const Color(0xFFDB3022),),
            ),
          )
        ],
      ),
    );
  }
}