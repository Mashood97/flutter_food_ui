import 'package:flutter/material.dart';


class FoodItem extends StatelessWidget {

  final String imageUrl;
  final String title;
  FoodItem(this.imageUrl,this.title);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Container(
          height: 200,
          child: Image.network(imageUrl,fit: BoxFit.cover,),

        ),
       header: GridTileBar(
         backgroundColor: Colors.red.withOpacity(0.6),
         title: Text(title,style: TextStyle(
           fontFamily: 'SpicyRice',
           fontWeight: FontWeight.w400,
         ),),
       ),
       footer: ListTile(
         trailing: CircleAvatar(
           backgroundColor: Colors.white,
           child: Icon(Icons.favorite,color: Colors.red,),
         ),
       ),
      ),
    );
  }
}
