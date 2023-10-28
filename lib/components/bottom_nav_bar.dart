import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
 MyBottomNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey.shade700,
        activeColor: Colors.black,
        tabActiveBorder: Border.all(color:Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        gap: 8,
        onTabChange: (value)=>onTabChange!(value),
        tabs:const [
          GButton(
              icon:Icons.home,
            text: 'Anasayfa',
          ),
          GButton(
            icon:Icons.shopping_bag_rounded,
            text: 'Sepete ekle',
          ),

        ],

      ),
    );
  }
}
