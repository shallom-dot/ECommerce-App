import 'package:e_commerce_app/screens/cart_screen.dart';
import 'package:e_commerce_app/widgets/container_modal_button.dart';
import 'package:flutter/material.dart';

class ProductDetailPopUp extends StatelessWidget {

final iStyle =  const TextStyle(
  color: Colors.black87,
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

List<Color> clrs = [
Colors.red,
Colors.indigo,
Colors.green,
Colors.amber
];

   ProductDetailPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
           builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 2.0,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)
              )
            ),

            child:  Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Size: ', style: iStyle),
                          const SizedBox(height: 20,),
                           Text('Color: ', style: iStyle),
                            const SizedBox(height: 20,),
                            Text('Total: ', style: iStyle),
                             const SizedBox(height: 20,),
                        ],
                      ),
                       const SizedBox(width: 30,),
                       Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 10,),
                                Text('S', style: iStyle),
                          const SizedBox(width: 30,),
                           Text('M', style: iStyle),
                            const SizedBox(width: 30,),
                            Text('L', style: iStyle),
                             const SizedBox(width: 30,),
                             Text('XL', style: iStyle),
                             const SizedBox(width: 30,),
                            ],
                          ),
                          const SizedBox(height: 18),
                          Container(
                            child: Row(
                              children: [
                                for(var i = 0; i< 4; i++)
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 6),
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                    color: clrs[i],
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              const SizedBox(width: 10,),
                              Text('-', style: iStyle,),
                              const SizedBox(width: 30,),
                               Text('1', style: iStyle,),
                              const SizedBox(width: 30,),
                                Text('+', style: iStyle,),
                            ],
                          )
                        ],
                       )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Payment', style: iStyle,),
                      const Text('\$40.00',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFDB3022)
                      ),)
                    ],
                  ),

                  const SizedBox(height: 20,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  CartScreen()));
                    },
                    child: ContainerButtonModel(
                      containerWidth: MediaQuery.of(context).size.width,
                      itext: 'Checkout',
                      bgColor: const Color(0xFFDB3022),
                    ),
                  )

                ],
              ), 
            ),

           ),
        );
      },
      child: Align(
        alignment: Alignment.center,
        child: ContainerButtonModel(
          containerWidth: MediaQuery.of(context).size.width / 1.5,
          itext: 
        'Buy Now',
        bgColor: const Color (0xFFDB3022),
        
             ),
      ) 
     
     );
  }
}