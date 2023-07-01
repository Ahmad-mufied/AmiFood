import 'package:amifood/components/glass.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: 400,
            child: Image.asset('lib/images/Ellipse.png'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "John George Simon",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: const GlassMorphism(
              start: 0.55,
              end: 0.3,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Metode Pembayaran",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 25,
                    thickness: 2,
                    indent: 50,
                    endIndent: 50,
                  ),
                  Text(
                    "Favorite",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 25,
                    thickness: 2,
                    indent: 50,
                    endIndent: 50,
                  ),
                  Text(
                    "Terakhir Dilihat",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 25,
                    thickness: 2,
                    indent: 50,
                    endIndent: 50,
                  ),
                  Text(
                    "Edit Alamat",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 25,
                    thickness: 2,
                    indent: 50,
                    endIndent: 50,
                  ),
                  Text(
                    "Log Out",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 25,
                    thickness: 2,
                    indent: 50,
                    endIndent: 50,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
