import 'package:app/color_constants/utils.dart';
import 'package:app/navigation%20bar/navigation.dart';
import 'package:app/screens/favourite.dart';
import 'package:app/screens/order_done.dart';
import 'package:flutter/material.dart';

class CartItem {
  String name;
  int quantity;
  double price;

  CartItem({required this.name, required this.quantity, required this.price});
}

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CartItem> _cartItems = [  
       CartItem(name: 'Item 1', quantity: 2, price: 10.0),   
       CartItem(name: 'Item 2', quantity: 1, price: 5.0),    
       CartItem(name: 'Item 3', quantity: 3, price: 7.5), 
        ];

  double get total => _cartItems.fold(
        0,
        (previousValue, element) => previousValue + element.quantity * element.price,
      );

  void _clearCart() {
    setState(() {
      _cartItems = [];
    });
  }

  void _removeItem(CartItem item) {
    setState(() {
      _cartItems.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Primarycolors.color3,
            ), 
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> navigation()));
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _cartItems.length,
                itemBuilder: (context, index) {
                  final item = _cartItems[index];
                  return ListTile(
                    title: Text(item.name),
                    subtitle: Text('Quantity: ${item.quantity}'),
                    trailing: Text('\$${item.price}'),
                    onTap: () => _removeItem(item),
                  );
                },
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total:', style: Theme.of(context).textTheme.headline6),
                Text('\$${total.toStringAsFixed(2)}', style: Theme.of(context).textTheme.headline6),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> orderdone()));
              },
              child: const Text('Checkout'),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: _clearCart,
              child: const Text('Clear Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
