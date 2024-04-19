import 'package:fibromyalgia_hospital/screens/ahella/Features/Store/Data/Models/store_model.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.withOpacity(0.4)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                StoreModel.all[2].images[0],
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StoreModel.all[2].name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text(
                      'Color',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  '\£ ${StoreModel.all[2].price.toString()}',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                  Center(
                   child: Row(
                     children: [
                       IconButton(
                         iconSize: 30,
                         icon:Icon(Icons.remove), onPressed: () {},

                       ),
                       SizedBox(width: 8),
                       Text('1'),
                       SizedBox(width: 8),
                       IconButton(
                         iconSize: 30,
                         icon:Icon(Icons.add), onPressed: () {},

                       )                     ],

                   ),
                 )
              ],
            ),
          ),
           IconButton(
             iconSize: 30,
             icon:Icon(Icons.remove_circle_outline), onPressed: () {},

           )
        ],
      ),
    );
  }
}
