import 'package:e_commerce_app/widgets/profile_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: const Text('Profile',
        style: TextStyle(
          fontWeight: FontWeight.w500
        ),),
        leading: BackButton(),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black38,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Stack(
                     clipBehavior: Clip.none, fit: StackFit.expand,
                    children: [ const CircleAvatar(
                      backgroundImage:  AssetImage('assets/images/woman.jpg'),
                    ),
                    Positioned(
                      right: -12,
                      bottom: 0,
                      child: 
                       Container(
                        height: 40,
                       width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          // border: Border(
                          //   colorScheme.background.white,
                          // ),
                           color: Colors.grey.shade100,
                        ),
                         child: IconButton(
                          padding: EdgeInsetsDirectional.zero,
                               icon: const Icon(Icons.photo_camera,
                               size: 20,
                               //color: Color(0xFFDB3022),
                               ),
                               onPressed: () {
                                 // Action to perform when the remove button is pressed
                                 // Add your logic here
                               },
                             ),
                       ),
                        
                      )
                    
                    ]
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
               ProfileButton(mytext: 'My Account', 
               myicon: CupertinoIcons.chevron_right ,
                press: () {  }, 
                myiconn: CupertinoIcons.person,),

                ProfileButton(mytext: 'Notifications', 
               myicon: CupertinoIcons.chevron_right ,
                press: () {  }, 
                myiconn: CupertinoIcons.bell,),

                 ProfileButton(mytext: 'Settings', 
               myicon: CupertinoIcons.chevron_right ,
                press: () {  }, 
                myiconn: CupertinoIcons.gear,),

                 ProfileButton(mytext: 'Help Center', 
               myicon: CupertinoIcons.chevron_right ,
                press: () {  }, 
                myiconn: CupertinoIcons.question_circle,),

                 ProfileButton(mytext: 'Logout', 
               myicon: CupertinoIcons.chevron_right ,
                press: () {  }, 
                myiconn: Icons.logout,),
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}