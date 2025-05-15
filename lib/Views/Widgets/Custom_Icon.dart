import 'package:flutter/material.dart';
class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46
      ,width: 46,
      decoration:BoxDecoration(
        color: Colors.white.withOpacity(.05)
            ,borderRadius: BorderRadius.circular(16)
      ),
      
      
      child: Center(
        child: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        )



      ),
    );
  }
}


