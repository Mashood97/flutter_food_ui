import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/food_provider.dart' show FoodModel;

class FoodItem extends StatelessWidget {

  final String imageUrl;
  final String title;
  FoodItem(this.imageUrl,this.title);
  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<FoodModel>(context,listen: false);
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
         trailing: IconButton(
           icon: Icon(Icons.add_shopping_cart),
           splashColor: Colors.red,
           onPressed: (){

           },

         ),
       ),
       footer: ListTile(
         trailing: Consumer<FoodModel>(
           builder: (ctx,food,_)=> GestureDetector(
             onTap: (){
              providerData.toogleFav();
             },
             child: CircleAvatar(
               backgroundColor: Colors.white,
               child:Icon( providerData.isFav ? Icons.favorite: Icons.favorite_border,color: Colors.red,),
             ),
           ),
         ),
       ),
      ),
    );
  }
}
