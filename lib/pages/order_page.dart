import 'package:amifood/components/glass.dart';
import 'package:amifood/models/order_history_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/cart_model.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

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
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Order History",
                style: GoogleFonts.notoSerif(
                  fontSize: 30,
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
                  return Column(
                    children: [
                      GlassMorphism(
                        start: 1,
                        end: 0.75,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration: BoxDecoration(
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
                                    Text('Rp ${orderHistory[index][1]}'),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text("X  ${orderHistory[index][2]}"),
                                  ],
                                ),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GlassMorphism(
                                        start: 1,
                                        end: 0.5,
                                        child: Container(
                                            margin: const EdgeInsets.all(3),
                                            child: Text(
                                                "${orderHistory[index][5]}"))),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      " ${orderHistory[index][4]}",
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  );
                },
              ),
            ),

            const SizedBox(
              height: 30,
            ),
            // total + pay now
          ],
        ));
  }
}
