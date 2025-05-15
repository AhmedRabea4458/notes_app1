import 'package:flutter/material.dart';

import 'Custom_Icon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(" My Notes",
          style: TextStyle(fontSize: 28,
          ),
        ),

        Spacer(),
        CustomSearchIcon(),

      ],
      
      
      
      
    );
        
      
    
  }
}
