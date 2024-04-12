import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
   ProfileButton({super.key, required this.mytext, required this.myicon, required this.press, required this.myiconn});

   final String mytext;
   final IconData myicon;
   final IconData myiconn;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 13),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      EdgeInsets.all(20), ),
                      backgroundColor:  MaterialStateProperty.all<Color>( const Color(0xFFF5F6F9)),
                    ),
                    onPressed: () {},
                    
                     child: Row(
                      children: [
                        Icon(myiconn,
                        weight: 22,
                        color: Color(0xFFDB3022),),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Text(mytext)),
                          Icon(myicon)
                      ],
                     )),
                );
  }
}