import 'package:flutter/material.dart';

import 'Custom_Icon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key
  ,required this.Title
  ,required this.icon});
  final String Title;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(Title,
          style: TextStyle(fontSize: 28,
          ),
        ),

        Spacer(),
        CustomSearchIcon(icon: icon),

      ],
      
      
      
      
    );
        
      
    
  }
}
