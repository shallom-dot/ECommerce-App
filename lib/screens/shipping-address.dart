
import 'package:e_commerce_app/screens/order_confirm_screen.dart';
import 'package:e_commerce_app/widgets/container_modal_button.dart';
import 'package:flutter/material.dart';

class ShippingAddressScreen extends StatefulWidget {
  const ShippingAddressScreen({super.key});

  @override
  State<ShippingAddressScreen> createState() => _ShippingAddressScreenState();
}

class _ShippingAddressScreenState extends State<ShippingAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Shipping Address',
        style: TextStyle(
          fontWeight: FontWeight.w500
        ),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 30,),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name'
                  ),
                ),
                 const SizedBox(height: 15,),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mobile Number'
                  ),
                ),
                 const SizedBox(height: 15,),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Delivery Address'
                  ),
                ),
                 const SizedBox(height: 15,),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'City'
                  ),
                ),
                 const SizedBox(height: 15,),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'State/Province/Region'
                  ),
                ),
                 const SizedBox(height: 15,),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Zip Code(Postal Code)'
                  ),
                ),
                 const SizedBox(height: 15,),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Country'
                  ),
                ),
                const SizedBox(height: 25,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderConfirmScreen()));
                  },
                  child: ContainerButtonModel(itext: 'Add Address',
                  containerWidth: MediaQuery.of(context).size.width,
                  bgColor: const Color(0xFFDB3022),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

