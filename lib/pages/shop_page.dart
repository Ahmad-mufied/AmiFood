import 'package:amifood/components/glass.dart';
import 'package:amifood/components/product_item_card.dart';
import 'package:amifood/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),

          // good moring
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Yuk Gass lah\ndipilih makanannya",
              style: GoogleFonts.notoSerif(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Container(
            // Add padding around the search bar
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            // Use a Material design search bar
            child: TextField(
              readOnly: true,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
                // Add a clear button to the search bar
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () => () {},
                ),
                // Add a search icon or button to the search bar
                prefixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Sort By ",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    GlassMorphism(
                      start: 0.5,
                      end: 0.1,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text(
                          "Rating Terbaik",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GlassMorphism(
                      start: 0,
                      end: 0,
                      border: 0.5,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text(
                          "Harga Termurah",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GlassMorphism(
                      start: 0,
                      end: 0,
                      border: 0.5,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text(
                          "Harga Termahal",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 15,
          ),

          Expanded(
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              mainAxisSpacing: 15.0,
              crossAxisSpacing: 10.0,
              staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
              itemCount: productItems.length,
              itemBuilder: (BuildContext context, int index) {
                return MasonryGridTile(
                  title: productItems[index][0],
                  price: productItems[index][1],
                  image: productItems[index][3],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
