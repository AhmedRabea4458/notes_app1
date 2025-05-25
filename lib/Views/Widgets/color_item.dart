import 'package:flutter/material.dart';
class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});

  @override
  final bool isSelected;
  final Color color;
  Widget build(BuildContext context) {
    return isSelected?CircleAvatar(
        radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 34,
        backgroundColor: color,
      ),
    ) :  CircleAvatar(
      radius: 38,
      backgroundColor:color,
    );
  }
}
class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex=0;
  @override
  List<Color> colors=const [
    Color(0xffe76f51),
    Color(0xfff4a261),
    Color(0xffe9c46a),
    Color(0xff2a9d8f),
    Color(0xff264653),
   
    ];


  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(onTap: (){
              currentIndex=index;
              setState(() {

              });
            },
              child: ColorItem(color: colors[index],
                  isSelected:currentIndex==index),
            ),
          );
        },
      ),
    );
  }
}
