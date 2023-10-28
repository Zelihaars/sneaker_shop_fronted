
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key,required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart(){
    Provider.of<Cart>(context,listen: false).removeItemFromCart(widget.shoe);
    showDialog(
        context: context,
        builder: (context)=> AlertDialog(
          title: Text("Silindi"),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: <Widget> [
          ListTile(
            leading: Image.asset(widget.shoe.imagePath),
            title: Text(widget.shoe.name),
            subtitle: Text(widget.shoe.price),
            trailing:IconButton(
              icon: Icon(Icons.delete),
              onPressed:removeItemFromCart ,
            )
          ),
        ],
      ),




    );
  }
}
/*
ElevatedButton(
style: ElevatedButton.styleFrom(
backgroundColor: Colors.black,
),
onPressed: (){
showDialog(context: context,
builder: (BuildContext context){
return AlertDialog(
title: Text('Sepet Onaylandı'),
);
});
},
child: Text("Sepeti onayla")
),
*/

