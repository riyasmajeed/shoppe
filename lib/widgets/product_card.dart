import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shop_example/constants.dart';
import 'package:shop_example/models/product.dart';
import 'package:shop_example/screens/product_screen.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductScreen(product: product),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kcontentColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Image.asset(
                  product.image,
                  width: 120,
                  height: 120,
                ),
                Text(
                  product.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                // Row(

                  
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     Container(
                   
                //       child: Text(
                //         "\$${product.price}",
                //         style: const TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 16,
                //         ),
                //       ),
                //     ),
                   
                //   ],
                // )
              ],
            ),
          ),
          Positioned(
right: 10,
top: 10,
            child: Container(
              width: 30,
              height: 30,
              decoration:  BoxDecoration(
            
              
              ),
              child:  Icon(
                Ionicons.heart,
                color: Color.fromARGB(255, 112, 107, 107),
                size: 18,
              ),
            ),
          ),


          Positioned(

            
            child: Container())
        ],

        
      ),
    );
  }
}
