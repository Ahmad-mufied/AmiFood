import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "My Cart",
                style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            // List of cart
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                padding: const EdgeInsets.all(12),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          cartItems[index][3],
                          height: 35,
                        ),
                        title: Text(cartItems[index][0]),
                        subtitle: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Rp' + cartItems[index][1]),
                            SizedBox(
                              width: 10,
                            ),
                            Text("X  " + cartItems[index][2].toString()),
                          ],
                        ),
                        trailing: IconButton(
                            icon: const Icon(Icons.cancel), onPressed: () {}),
                      ),
                    ),
                  );
                },
              ),
            ),

            // total + pay now
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: Container(
                margin: EdgeInsets.only(bottom: 50),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(color: Colors.green[100]),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Rp 100.000',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green.shade100),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: const Row(
                        children: [
                          Text(
                            "Pay Now",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
