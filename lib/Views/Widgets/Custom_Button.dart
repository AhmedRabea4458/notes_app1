import 'package:flutter/material.dart';

import 'Constants.dart';
class CustomButton extends StatelessWidget {
   CustomButton({super.key,this.onTap,this.isloading=false});
  void Function()? onTap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(8)
        ),
        width:MediaQuery.of(context).size.width,
        height: 55,
        child:  Center(
          child: isloading? const SizedBox(
            height: 24,
            width: 24,
            child:  CircularProgressIndicator(
            color: Colors.black,
          ),)

          :const Text("Add",style:
          TextStyle(color: Colors.black
              ,fontSize: 24
          ),
          ) ,
        ),

      ),
    );
  }
}

